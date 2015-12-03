class AddPartNoToMessagepart < ActiveRecord::Migration
  def change
    add_column :messageparts, :part_no, :integer
  end
end
