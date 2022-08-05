# frozen_string_literal: true

class Speciality < ApplicationRecord
  has_many :users
  
  validates :name, presence: true
end
