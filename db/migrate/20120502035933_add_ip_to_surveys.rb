class AddIpToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :ip, :string
  end
end
