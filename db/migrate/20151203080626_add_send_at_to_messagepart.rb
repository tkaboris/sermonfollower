class AddSendAtToMessagepart < ActiveRecord::Migration
  def change
    add_column :messageparts, :send_at, :datetime
  end
end
