# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :speciality
  has_many :licenses
  has_many :turns
  has_many :appointments

  def getname
    "#{role} #{name} #{last_name}"
  end

  def get_professionals
    "#{speciality.name} - #{name} #{last_name}" if role == 'professional'
  end

  def get_speciality_name
    "#{speciality.name} - #{name} #{last_name}"
  end
end
