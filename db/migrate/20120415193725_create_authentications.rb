class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.integer :user_id
      t.integer :auth_client_id
      t.string  :uid
      t.string  :token
      t.string  :secret
      t.text    :omniauth_data
      t.datetime :expires_at
      t.datetime :last_import_date
      t.timestamps
    end
    add_index :authentications, :user_id 
    add_index :authentications, :auth_client_id 
  end
end
