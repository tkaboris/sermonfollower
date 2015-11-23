class AddNameToListeners < ActiveRecord::Migration
  def change
    add_column :listeners, :name, :string
    add_column :listeners, :lastname, :string
  end
end
