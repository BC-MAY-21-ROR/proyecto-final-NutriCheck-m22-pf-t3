# frozen_string_literal: true

class CreateTurns < ActiveRecord::Migration[7.0]
  def change
    create_table :turns, &:timestamps
  end
end
