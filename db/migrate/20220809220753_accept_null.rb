class AcceptNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :patients, :second_name, true
    change_column_null :patients, :second_last_name, true
    change_column_null :patients, :observations, true
    change_column_null :cards, :comments, true
    change_column_null :diets, :comments, true
  end
end
