# frozen_string_literal: true

class Card < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_full_text, associated_against: {
    patient: %i[name last_name]
  }

  belongs_to :patient
  belongs_to :diet
  belongs_to :appointment

  validates :next_appointment, presence: true
  validates :weight, presence: true
  validates :comments, presence: true
  validates :patient_id, presence: true
  validates :diet_id, presence: true
end
