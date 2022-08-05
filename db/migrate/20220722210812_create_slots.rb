# frozen_string_literal: true

class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.string :service
      t.string :professional
      t.datetime :start_time

      t.timestamps
    end
  end
end
