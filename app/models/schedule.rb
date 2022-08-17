# frozen_string_literal: true

class Schedule < ApplicationRecord
  acts_as_paranoid
  
  has_many :turns

  validates :week_day, presence: true
  validates :opening_time, presence: true
  validates :closing_time, presence: true

  def gethours
    "#{week_day} #{opening_time.strftime('%l:%M %p')}-#{closing_time.strftime('%l:%M %p')}"
  end
end
