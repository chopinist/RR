class CreateReservationPolicies < ActiveRecord::Migration
  def change
    create_table :reservation_policies do |t|
      t.integer :enforced_by, default: 0
      t.integer :apply_on, array: true, default: []
      t.integer :daily_quota, null: false
      t.integer :total_quota, null: false

      t.timestamps null: false
    end
  end
end
