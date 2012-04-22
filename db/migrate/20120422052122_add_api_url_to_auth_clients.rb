class AddApiUrlToAuthClients < ActiveRecord::Migration
  def change
    add_column :auth_clients, :api_url, :string
  end
end
