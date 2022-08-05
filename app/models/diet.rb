# frozen_string_literal: true

class Diet < ApplicationRecord
  has_many :cards

  validates :name, presence: true
  validates :description, presence: true
  validates :comments, presence: true
end
