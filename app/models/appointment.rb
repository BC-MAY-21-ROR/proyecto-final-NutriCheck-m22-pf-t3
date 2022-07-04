class Appointment < ApplicationRecord
  belongs_to :patient, :user, :service
end
