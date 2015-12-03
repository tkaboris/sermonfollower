class ListenersSpeakers < ActiveRecord::Base
  belongs_to :listener
  belongs_to :speaker
end
