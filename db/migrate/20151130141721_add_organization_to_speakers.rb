class AddOrganizationToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :organization_name, :string
  end
end
