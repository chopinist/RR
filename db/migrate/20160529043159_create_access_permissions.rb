class CreateAccessPermissions < ActiveRecord::Migration
  def change
    create_table :access_permissions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true
      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps null: false
    end
  end
end
