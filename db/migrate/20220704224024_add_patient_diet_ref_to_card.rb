# frozen_string_literal: true

class AddPatientDietRefToCard < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :patient, null: false, foreign_key: true
    add_reference :cards, :diet, null: false, foreign_key: true
  end
end
