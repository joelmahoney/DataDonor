class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :description
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
