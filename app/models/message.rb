class Message < ActiveRecord::Base
  belongs_to :speaker
  has_many :messageparts
  mount_uploader :picture, PictureUploader
end
