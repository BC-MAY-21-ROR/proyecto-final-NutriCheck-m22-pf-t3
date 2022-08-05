# frozen_string_literal: true

class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def show
    schedule
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_schedules(1)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    schedule
  end

  def update
    schedule

    if @schedule.update(schedule_params)
      redirect_schedules(2)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    schedule
    if @schedule.destroy
      redirect_schedules(3)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def redirect_schedules(option)
    case option
    when 1
      redirect_to schedules_path, notice: 'New license created successfully'
    when 2
      redirect_to schedules_path, notice: 'Schedule was edited successfully'
    else
      redirect_to schedules_path, notice: 'Schedule was deleted successfully'
    end
  end

  def schedule
    @schedule = Schedule.find(params[:id])
  end

  def schedule_params
    params.require(:schedule).permit(:week_day, :opening_time, :closing_time)
  end
end
