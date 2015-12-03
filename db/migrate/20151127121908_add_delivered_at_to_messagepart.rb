class AddDeliveredAtToMessagepart < ActiveRecord::Migration
  def change
    add_column :messageparts, :delivered_at, :datetime
  end
end
