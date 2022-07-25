# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :cards
  has_many :appointments

  has_one_attached :photo

  def patient_full_name
    "#{name} #{second_name} #{last_name} #{second_last_name}"
  end
end
