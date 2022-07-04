class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.string :reason
      t.string :status
      t.boolean :payment_status
      t.integer :score
      t.string :review

      t.timestamps
    end
  end
end
