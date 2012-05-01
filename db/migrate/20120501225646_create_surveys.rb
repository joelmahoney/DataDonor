class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.boolean :support

      t.timestamps
    end
  end
end
