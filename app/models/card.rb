class Card < ApplicationRecord
  belongs_to :patient, :diet
end
