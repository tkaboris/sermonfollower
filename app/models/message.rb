class Message < ActiveRecord::Base
  belongs_to :speaker
  has_many :messageparts
  has_many :message_categories
  has_many :categories, through: :message_categories
  mount_uploader :picture, PictureUploader
end
