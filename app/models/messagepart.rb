class Messagepart < ActiveRecord::Base
  belongs_to :message
  belongs_to :speaker
end
