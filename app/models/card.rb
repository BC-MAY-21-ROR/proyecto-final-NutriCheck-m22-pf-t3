# frozen_string_literal: true

class Card < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_full_text, associated_against: {
    patient: %i[name last_name]
  }

  belongs_to :patient
  belongs_to :diet, optional: true
  belongs_to :appointment


  validates :diet_id, presence: false
end
