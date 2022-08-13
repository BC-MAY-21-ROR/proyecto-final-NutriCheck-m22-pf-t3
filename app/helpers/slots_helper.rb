# frozen_string_literal: true

module SlotsHelper
  @slots_availables = Slot.where(status: 'available')

  def monday_availables
    @slots_availables.map do |x|
      x.start_time.strftime('%A %d') if x.start_time.monday?
    end.reject(&:nil?)
  end

  def tuesday_availables
    @slots_availables.map do |x|
      x.start_time.strftime('%A %d') if x.start_time.tuesday?
    end.reject(&:nil?).uniq.count
  end

  def wednesday_availables
    @slots_availables.map do |x|
      x.start_time.strftime('%A %d') if x.start_time.wednesday?
    end.reject(&:nil?).uniq.count
  end

  def thursday_availables
    @slots_availables.map do |x|
      x.start_time.strftime('%A %d') if x.start_time.thursday?
    end.reject(&:nil?).uniq.count
  end

  def friday_availables
    @slots_availables.map do |x|
      x.start_time.strftime('%A %d') if x.start_time.friday?
    end.reject(&:nil?).uniq.count
  end

  def saturday_availables
    @slots_availables.map do |x|
      x.start_time.strftime('%A %d') if x.start_time.saturday?
    end.reject(&:nil?).uniq.count
  end

  def sunday_availables
    @slots_availables.map do |x|
      x.start_time.strftime('%A %d') if x.start_time.sunday?
    end.reject(&:nil?).uniq.count
  end

  
end
