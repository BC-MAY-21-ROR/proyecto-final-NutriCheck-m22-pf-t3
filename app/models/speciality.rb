# frozen_string_literal: true

class Speciality < ApplicationRecord
  acts_as_paranoid
  
  has_many :users
  
  validates :name, presence: true
end
