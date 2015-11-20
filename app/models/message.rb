class Message < ActiveRecord::Base
  belongs_to :speaker
  has_many :messageparts
end
