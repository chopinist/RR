class DeleteHoursOfOperations < ActiveRecord::Migration
  def change
    drop_table :hours_of_operations
  end
end
