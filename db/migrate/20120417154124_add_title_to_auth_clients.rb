class AddTitleToAuthClients < ActiveRecord::Migration
  def change
    add_column :auth_clients, :title, :string
  end
end
