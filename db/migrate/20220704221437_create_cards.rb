class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.date :next_appointment
      t.float :weight
      t.string :comments

      t.timestamps
    end
  end
end
