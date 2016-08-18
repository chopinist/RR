class Imascha < ActiveRecord::Migration
  def change
    remove_column :rooms, :instruments
    add_column :rooms, :instruments, :text
  end
end
