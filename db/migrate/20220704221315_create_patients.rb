class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :second_name
      t.string :last_name
      t.string :second_last_name
      t.date :birth_date
      t.string :phone
      t.string :email
      t.string :password
      t.float :height
      t.string :observations

      t.timestamps
    end
  end
end
