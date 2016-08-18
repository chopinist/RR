class AddForeignKeyToRooms < ActiveRecord::Migration
  def change
    add_foreign_key :rooms, :buildings
  end
end
