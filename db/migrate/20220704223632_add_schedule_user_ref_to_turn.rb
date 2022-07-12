# frozen_string_literal: true

class AddScheduleUserRefToTurn < ActiveRecord::Migration[7.0]
  def change
    add_reference :turns, :schedule, null: false, foreign_key: true
    add_reference :turns, :user, null: false, foreign_key: true
  end
end
