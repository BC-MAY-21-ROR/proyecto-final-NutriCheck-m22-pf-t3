class User < ApplicationRecord
  belongs_to :speciality
  has_many :licenses
  has_many :turns
  has_many :appointments

  def getname
    role + ' ' + name + ' ' + last_name
  end
end
