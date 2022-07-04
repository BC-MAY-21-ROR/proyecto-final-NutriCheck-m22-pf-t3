class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :week_day
      t.time :opening_time
      t.time :closing_time

      t.timestamps
    end
  end
end
