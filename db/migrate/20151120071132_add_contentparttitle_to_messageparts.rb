class AddContentparttitleToMessageparts < ActiveRecord::Migration
  def change
    add_column :messageparts, :contentparttitle, :string
  end
end
