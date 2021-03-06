# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :speciality
  
  has_one_attached :photo

  has_many :licenses
  has_many :turns
  has_many :appointments

  def getname
    "#{role} #{name} #{last_name}"
  end

  def full_name
    "#{name} #{last_name}"
  end

  def get_professionals
    "#{speciality.name} - #{name} #{last_name}" if role == 'professional'
  end

  def get_speciality_name
    "#{speciality.name} - #{name} #{last_name}"
  end
end
