# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :speciality

  has_one_attached :photo

  has_many :licenses
  has_many :turns
  has_many :appointments

  validates :name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :password, presence: true, on: :create
  validates :role, presence: true
  validates :speciality_id, presence: true

  def getname
    "#{role} #{name} #{last_name}"
  end

  def short_name
    "#{name.split(' ')[0]} #{last_name.split(' ')[0]}"
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

  def admin?
    role == 'administrator'
  end
  def professional?
    role == 'professional'
  end
  def manager?
    role == 'manager'
  end
  
end
