# frozen_string_literal: true

class Service < ApplicationRecord
  has_many :appointments

  validates :name, presence: true
  validates :duration, presence: true
  validates :price, presence: true
end
