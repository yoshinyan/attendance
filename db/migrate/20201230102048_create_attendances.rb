class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.integer :group_id
      t.date :date
      t.timestamp :attendance_time_at
      t.timestamp :leave_time_at
      t.text :note

      t.timestamps
    end
  end
end
