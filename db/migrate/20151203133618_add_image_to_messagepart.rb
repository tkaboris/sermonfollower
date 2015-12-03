class AddImageToMessagepart < ActiveRecord::Migration
  def change
    add_attachment :messageparts, :image
  end
end
