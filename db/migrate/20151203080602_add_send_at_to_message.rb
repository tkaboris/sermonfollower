class AddSendAtToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :send_at, :datetime
  end
end
