class Messagepart < ActiveRecord::Base
  belongs_to :message
  belongs_to :speaker


  after_save :send_notification_mails_to_listners


  def send_notification_mails_to_listners
      speaker.listeners.each do |l|

      end
  end

end
