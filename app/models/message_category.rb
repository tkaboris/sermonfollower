class MessageCategory < ActiveRecord::Base
  belongs_to :message
  belongs_to :category
end
