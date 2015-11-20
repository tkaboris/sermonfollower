class CreateMessageparts < ActiveRecord::Migration
  def change
    create_table :messageparts do |t|
      t.text :contentpart
      t.references :message, index: true, foreign_key: true
      t.references :speaker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
