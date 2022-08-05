# frozen_string_literal: true

class AddAppointmentToCard < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :appointment, null: false, foreign_key: true
  end
end
