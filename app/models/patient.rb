# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :cards
  has_many :appointments

  def patient_full_name
    name + ' ' + second_name + ' ' + last_name + ' ' + second_last_name
  end
end
