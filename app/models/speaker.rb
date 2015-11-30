class Speaker < ActiveRecord::Base
  has_many :messages
  has_many :messageparts
  has_many :listeners_speakers,  class_name: 'ListenersSpeakers'
  has_many :listeners, through: :listeners_speakers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
