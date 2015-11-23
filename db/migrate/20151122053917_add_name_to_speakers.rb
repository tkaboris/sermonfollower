class AddNameToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :name, :string
    add_column :speakers, :lastname, :string
  end
end
