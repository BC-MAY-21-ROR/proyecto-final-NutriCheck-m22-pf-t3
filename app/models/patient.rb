# frozen_string_literal: true

class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cards
  has_many :appointments

  has_one_attached :photo

  def patient_full_name
    "#{name} #{second_name} #{last_name} #{second_last_name}"
  end
end
