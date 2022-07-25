class DropTableUsuarios < ActiveRecord::Migration[7.0]
  def change
    drop_table :usuarios
  end
end
