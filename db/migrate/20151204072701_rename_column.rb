class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :messageparts, :picture, :picturepart
  end
end
