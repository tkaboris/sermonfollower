class SendMessagePartEmailWorker
  include Sidekiq::Worker

  def perform(messagepart_id, listener_id)
    messagepart = Messagepart.find_by id: messagepart_id
    listener = Listener.find_by id: listener_id
    unless messagepart.nil? or listener.nil?
      MessageMailer.mail_message_part_to_listener(messagepart, listener).deliver_now
    end
  end
end