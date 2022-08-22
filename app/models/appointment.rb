# frozen_string_literal: true

class Appointment < ApplicationRecord
  include PgSearch::Model
  self.inheritance_column = nil
  acts_as_paranoid

  pg_search_scope :search_full_text, associated_against: {
    patient: %i[name last_name]
  }

  enum service_id: %i[base complementary_therapies reducing_massage physical_trainer_consultation lymphatic_massage
                      consulting_diet_specialist]

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
end
