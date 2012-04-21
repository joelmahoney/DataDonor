class CreateAuthClients < ActiveRecord::Migration
  def change
    create_table :auth_clients do |t|
      t.string :name
      t.string :title
      t.string :app_key
      t.string :app_secret
      t.boolean :active, :default => true
      t.timestamps
    end
  end
end
