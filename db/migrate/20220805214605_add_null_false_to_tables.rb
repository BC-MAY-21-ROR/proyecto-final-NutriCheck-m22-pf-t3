class AddNullFalseToTables < ActiveRecord::Migration[7.0]
  def change
    # appointments
    change_column_null :appointments, :date_time, false
    change_column_null :appointments, :reason, false
    change_column_null :appointments, :status, false
    change_column_null :appointments, :payment_status, false
    # cards
    change_column_null :cards, :next_appointment, false
    change_column_null :cards, :weight, false
    change_column_null :cards, :comments, false
    # diets
    change_column_null :diets, :name, false
    change_column_null :diets, :description, false
    change_column_null :diets, :comments, false
    # licenses
    change_column_null :licenses, :name, false
    change_column_null :licenses, :number, false
    # patients
    change_column_null :patients, :name, false
    change_column_null :patients, :second_name, false
    change_column_null :patients, :last_name, false
    change_column_null :patients, :second_last_name, false
    change_column_null :patients, :birth_date, false
    change_column_null :patients, :phone, false
    change_column_null :patients, :email, false
    change_column_null :patients, :height, false
    change_column_null :patients, :observations, false
    # schedules
    change_column_null :schedules, :week_day, false
    change_column_null :schedules, :opening_time, false
    change_column_null :schedules, :closing_time, false
    # services
    change_column_null :services, :name, false
    change_column_null :services, :duration, false
    change_column_null :services, :price, false
    # specialities
    change_column_null :specialities, :name, false
    # users
    change_column_null :users, :name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :birth_date, false
    change_column_null :users, :phone, false
    change_column_null :users, :email, false
    change_column_null :users, :role, false
  end
end
