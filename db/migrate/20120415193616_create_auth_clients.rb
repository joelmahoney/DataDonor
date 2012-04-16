class CreateAuthClients < ActiveRecord::Migration
  def change
    create_table :auth_clients do |t|
      t.string :name
      t.string :app_key
      t.string :app_secret

      t.timestamps
    end
  end
end
