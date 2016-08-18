class AddOperatingHoursToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :operating_hours, :string
    remove_column :buildings, :open_time
    remove_column :buildings, :close_time
  end
end
