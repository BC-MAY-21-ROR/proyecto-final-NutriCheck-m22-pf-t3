class AddStatusColumnToSlot < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :status, :string
  end
end
