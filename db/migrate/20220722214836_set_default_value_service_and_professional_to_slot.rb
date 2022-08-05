# frozen_string_literal: true

class SetDefaultValueServiceAndProfessionalToSlot < ActiveRecord::Migration[7.0]
  def change
    change_column_default :slots, :service, 'available'
    change_column_default :slots, :professional, 'available'
  end
end
