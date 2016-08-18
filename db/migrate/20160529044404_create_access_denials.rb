class CreateAccessDenials < ActiveRecord::Migration
  def change
    create_table :access_denials do |t|
      t.references :room, index: true, foreign_key: true
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :day, array: true, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false

      t.timestamps null: false
    end
  end
end
