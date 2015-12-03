class AddRecieveMessageAtToListener < ActiveRecord::Migration
  def change
    add_column :listeners, :recieve_message_at, :string
  end
end
