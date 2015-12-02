class Category < ActiveRecord::Base
  has_many :message_categories
  has_many :messages, through: :message_categories
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
end
