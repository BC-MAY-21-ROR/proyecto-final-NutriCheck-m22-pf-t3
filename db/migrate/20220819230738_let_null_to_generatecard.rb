class LetNullToGeneratecard < ActiveRecord::Migration[7.0]
  def change
    change_column_null :cards, :weight, true
    change_column_null :cards, :next_appointment, true
    change_column_null :cards, :diet_id, true
  end
end
