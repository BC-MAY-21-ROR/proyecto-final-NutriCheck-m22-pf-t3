class CreateLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :licenses do |t|
      t.string :type
      t.string :number

      t.timestamps
    end
  end
end
