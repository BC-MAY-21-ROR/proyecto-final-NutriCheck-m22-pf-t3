class DropTableMedicos < ActiveRecord::Migration[7.0]
  def change
    drop_table :medicos
  end
end
