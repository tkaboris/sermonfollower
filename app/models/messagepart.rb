class Messagepart < ActiveRecord::Base
  belongs_to :message
  belongs_to :speaker
  has_attached_file :image, styles: { large: "500x500", medium: "300x350#" }

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  #only un_delivered message-parts
  scope :un_delivered, -> { where("delivered_at IS ?", nil) }

  # gives the messagepart which has to mail today, for all message_id(s) returned by the above scope
  scope :message_parts_to_mail, -> { where("(DATE(send_at) = ? OR DATE(send_at) = ?) AND delivered_at IS ?", Date.today, 1.day.from_now.to_date, nil).order(:part_no) }

  # after_save :send_notification_mails_to_listners


  # def send_notification_mails_to_listners
  #     speaker.listeners.each do |l|

  #     end
  # end

  class << self

    #returns message ids of those messages who is having any un delivered messageparts
    def message_ids_having_un_delivered_messageparts
      self.un_delivered.distinct.pluck(:message_id)
    end

    #this is to schedule the message-part email to listeners based on there timezone and time(from listeners profile)
    def send_message_parts_to_listeners
      Rails.logger.info "######send_message_parts_to_listeners START"
      messages = Message.messages_to_mail

      messages.each do |message|
        messageparts = message.messageparts.message_parts_to_mail

        messageparts.each do |messagepart|
          message.listeners.each do |listener|

            next unless message.valid_listener?(listener)

            send_at = Message.send_at_for messagepart.send_at, listener
            SendMessagePartEmailWorker.perform_at(send_at, messagepart.id, listener.id)
          end

          messagepart.update_attributes(delivered_at: Time.now)
        end
      end
      Rails.logger.info "######send_message_parts_to_listeners END"
    end
  end

  def attached_img
    image? ? image.url(:medium) : ""
  end

  def image?
    image.present?
  end

  #to get the image path, used for image atachment in email.
  def get_image_path
    Rails.root.join("public").to_s + image.url(:large).split('?').first
  end
end
