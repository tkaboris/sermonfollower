class Removecolumn < ActiveRecord::Migration
  def change
    remove_column :messageparts, :picture
  end
end
