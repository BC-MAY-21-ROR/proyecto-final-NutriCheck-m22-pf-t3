class Card < ApplicationRecord
  belongs_to :patient, :diet
  belongs_to :diet
end
