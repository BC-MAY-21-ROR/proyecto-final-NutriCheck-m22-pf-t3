class User < ApplicationRecord
  belongs_to :speciality
  has_many :licenses, :turns, :appointments
end
