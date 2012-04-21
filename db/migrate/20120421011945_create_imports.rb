class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.integer :authentication_id
      t.string :name
      t.text :data
      t.timestamps
    end
    add_index :imports, :authentication_id
  end
end
