class Turn < ApplicationRecord
  belongs_to :user, :schedule
end
