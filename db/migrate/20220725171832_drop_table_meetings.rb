class DropTableMeetings < ActiveRecord::Migration[7.0]
  def change
    drop_table :meetings
  end
end
