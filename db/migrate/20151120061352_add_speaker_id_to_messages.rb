class AddSpeakerIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :speaker_id, :integer
  end
end
