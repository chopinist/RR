class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
