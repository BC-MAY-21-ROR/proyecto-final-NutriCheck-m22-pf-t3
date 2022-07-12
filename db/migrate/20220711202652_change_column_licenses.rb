# frozen_string_literal: true

class ChangeColumnLicenses < ActiveRecord::Migration[7.0]
  def change
    rename_column :licenses, :type, :name
  end
end
