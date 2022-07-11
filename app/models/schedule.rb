class Schedule < ApplicationRecord
  has_many :turns

  def gethours
    week_day + ' ' + opening_time.strftime("%l:%M %p") + '-' + closing_time.strftime("%l:%M %p")
  end
  
end
