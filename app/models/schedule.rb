class Schedule < ApplicationRecord
  has_many :turns

  def gethours
    week_day + ' ' + opening_time.strftime("%H:%M") + 'am' + '-' + closing_time.strftime("%H:%M") + 'am'
  end
  
end
