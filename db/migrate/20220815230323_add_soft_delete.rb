class AddSoftDelete < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :deleted_at, :datetime
    # add_column :cards, :deleted_at, :datetime
    add_column :diets, :deleted_at, :datetime
    # add_column :licenses, :deleted_at, :datetime
    add_column :patients, :deleted_at, :datetime
    add_column :schedules, :deleted_at, :datetime
    add_column :services, :deleted_at, :datetime
    # add_column :slots, :deleted_at, :datetime
    add_column :specialities, :deleted_at, :datetime
    # add_column :turns, :deleted_at, :datetime
    add_column :users, :deleted_at, :datetime
  end
end
