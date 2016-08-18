class CreateStudyProgrammes < ActiveRecord::Migration
  def change
    create_table :study_programmes do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
