class ChangeTypeDataOnAppointment < ActiveRecord::Migration[7.0]
  def change
    change_column :appointments, :payment_status, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
