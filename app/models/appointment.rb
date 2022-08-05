# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  belongs_to :service
  has_one :card
end
