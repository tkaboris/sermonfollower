class CreateListenersSpeakers < ActiveRecord::Migration
  def change
    create_table :listeners_speakers do |t|
      t.integer :listener_id
      t.integer :speaker_id

      t.timestamps null: false
    end
  end
end
