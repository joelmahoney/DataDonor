class AddActiveToAuthClients < ActiveRecord::Migration
  def change
    add_column :auth_clients, :active, :boolean, :default => false
  end
end
