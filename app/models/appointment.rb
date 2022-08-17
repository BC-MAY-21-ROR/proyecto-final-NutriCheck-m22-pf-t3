# frozen_string_literal: true

class Appointment < ApplicationRecord
  include PgSearch::Model

  acts_as_paranoid

  pg_search_scope :search_full_text, associated_against: {
    patient: %i[name last_name]
  }

  belongs_to :patient
  belongs_to :user
  belongs_to :service
  has_one :card

  validates :date_time, presence: true
  validates :reason, presence: true
  validates :service_id, presence: true
  validates :patient_id, presence: true
  validates :user_id, presence: true
  validates :status, presence: true
  validates :payment_status, presence: true
end
