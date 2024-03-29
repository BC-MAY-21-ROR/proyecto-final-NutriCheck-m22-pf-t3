# frozen_string_literal: true

class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
