# frozen_string_literal: true

class Patient < ApplicationRecord
  attr_accessor :current_password
  include PgSearch::Model

  acts_as_paranoid

  pg_search_scope :search_full_text, against: {
    last_name: 'A',
    name: 'B', 
    second_name: 'C'
  }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cards
  has_many :appointments

  has_one_attached :photo

  validates :name, presence: true
  validates :second_name, presence: false
  validates :last_name, presence: true
  validates :second_last_name, presence: false
  validates :birth_date, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :password, presence: true, on: :create
  validates :height, presence: true

  def patient_full_name
    "#{name} #{second_name} #{last_name} #{second_last_name}"
  end
end
