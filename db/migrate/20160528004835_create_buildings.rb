class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.time :open_time
      t.time :close_time

      t.timestamps null: false
    end
    add_index :buildings, :name
  end
end
