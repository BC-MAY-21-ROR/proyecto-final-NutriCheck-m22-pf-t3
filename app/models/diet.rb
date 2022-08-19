# frozen_string_literal: true

class Diet < ApplicationRecord
  acts_as_paranoid
  
  has_many :cards

  validates :name, presence: true
  validates :description, presence: true
  validates :comments, presence: true
end
