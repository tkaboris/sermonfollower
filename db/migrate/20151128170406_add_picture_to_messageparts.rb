class AddPictureToMessageparts < ActiveRecord::Migration
  def change
    add_column :messageparts, :picture, :string
  end
end
