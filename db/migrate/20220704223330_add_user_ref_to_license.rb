class AddUserRefToLicense < ActiveRecord::Migration[7.0]
  def change
    add_reference :licenses, :user, null: false, foreign_key: true
  end
end
