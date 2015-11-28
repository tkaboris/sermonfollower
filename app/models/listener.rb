class Listener < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :listeners_speakers, class_name: 'ListenersSpeakers'
  has_many :speakers, through: :listeners_speakers

  def assign_speaker(id)
    speaker = Speaker.find id
    unless speaker_exist?(id)
      self.speakers << speaker
    else
      false
    end
  end

  def speaker_exist?(id)
    speakers.where(id: id).present?
  end
end
