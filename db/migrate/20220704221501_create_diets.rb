# frozen_string_literal: true

class CreateDiets < ActiveRecord::Migration[7.0]
  def change
    create_table :diets do |t|
      t.string :name
      t.string :description
      t.string :comments

      t.timestamps
    end
  end
end
