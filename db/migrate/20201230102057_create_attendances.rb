class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date, null: false
      t.datetime :start_time_at, null: false
      t.datetime :end_time_at
      t.text :note

      t.timestamps
    end
  end
end
