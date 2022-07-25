class SetDefaultValueStatusToSlot < ActiveRecord::Migration[7.0]
  def change
    change_column_default :slots, :status, 'available'
  end
end
