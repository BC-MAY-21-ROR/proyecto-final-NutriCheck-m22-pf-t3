# frozen_string_literal: true

class Card < ApplicationRecord
  belongs_to :patient
  belongs_to :diet
  belongs_to :appointment
end
