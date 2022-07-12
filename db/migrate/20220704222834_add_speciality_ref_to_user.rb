# frozen_string_literal: true

class AddSpecialityRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :speciality, null: false, foreign_key: true
  end
end
