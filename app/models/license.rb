# frozen_string_literal: true

class License < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :number, presence: true
  validates :user_id, presence: true
end
