class MessageCategories < ActiveRecord::Migration
  def change
    create_table :message_categories do |t|
      t.integer :category_id, :message_id
    end
  end
end
