class AddAvatarToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :avatar, :string
  end
end
