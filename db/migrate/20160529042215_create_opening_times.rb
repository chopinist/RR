class CreateOpeningTimes < ActiveRecord::Migration
  def change
    create_table :opening_times do |t|
      t.references :building, index: true, foreign_key: true
      t.integer :day, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false

      t.timestamps null: false
    end
  end
end
