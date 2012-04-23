class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :organization_id
      t.string :name
      t.text :description
      t.datetime :start_date
      t.string :location
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
    add_index :projects, :organization_id
    add_index :projects, :name
  end
end
