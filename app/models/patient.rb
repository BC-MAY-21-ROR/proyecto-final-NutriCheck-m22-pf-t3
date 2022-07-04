class Patient < ApplicationRecord
  has_many :cards, :appointments
end
