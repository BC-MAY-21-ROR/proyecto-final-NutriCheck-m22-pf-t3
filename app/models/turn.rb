# frozen_string_literal: true

class Turn < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_full_text, against: {
    user: 'A'
  }

  belongs_to :user
  belongs_to :schedule
end
