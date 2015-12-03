class SendMessageEmailWorker
  include Sidekiq::Worker

  def perform(message_id, listener_id)
    message = Message.find_by id: message_id
    listener = Listener.find_by id: listener_id
    unless message.nil? or listener.nil?
      MessageMailer.mail_message_to_listener(message, listener).deliver_now
    end
  end
end