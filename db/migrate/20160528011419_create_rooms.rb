class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :instruments, array: true, default:[]
      t.string :users_with_access, array: true, default:[]

      t.timestamps null: false
    end
    add_index :rooms, :name
  end
end
