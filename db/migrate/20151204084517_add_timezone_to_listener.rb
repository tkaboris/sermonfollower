class AddTimezoneToListener < ActiveRecord::Migration
  def change
    add_column :listeners, :time_zone, :string
  end
end
