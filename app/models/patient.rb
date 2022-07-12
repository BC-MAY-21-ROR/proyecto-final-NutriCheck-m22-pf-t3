# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :cards
  has_many :appointments
end
