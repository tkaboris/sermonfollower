class Messagepart < ActiveRecord::Base
  belongs_to :message
  belongs_to :speaker
  mount_uploader :picturepart, PictureUploader

  # change picture to picturepart in db, and controller and model and views. So each image can be


end
