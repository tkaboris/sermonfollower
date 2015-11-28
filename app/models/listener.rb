class Listener < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :listeners_speakers, class_name: 'ListenersSpeakers'
  has_many :speakers, through: :listeners_speakers

  #Assign speaker, here id is id of speaker
  def assign_speaker(id)
    #Finding speaker by id
    speaker = Speaker.find id
    #assign speaker if its not subscribed
    unless speaker_exist?(id)
      #This is the way to assign speaker to listner
      #we have used has_many through then we have to assign it by << operator
      self.speakers << speaker
    else
      false
    end
  end

  #Checking speaker is already assigned to listner or not
  #it will return true or false
  def speaker_exist?(id)
    speakers.where(id: id).present?
  end
end
