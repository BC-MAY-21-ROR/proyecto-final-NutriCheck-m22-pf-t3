# frozen_string_literal: true

# Controller for SPECIALITIES

class SpecialitiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @specialities = Speciality.all
  end

  def new
    @speciality = Speciality.new
  end

  def show
    speciality
  end

  def create
    @speciality = Speciality.new(speci_params)
    if @speciality.save
      redirect_specialities(1)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    speciality
  end

  def update
    speciality

    if @speciality.update(speci_params)
      redirect_specialities(2)
    else
      render :edit, stauts: :unprocessable_entity
    end
  end

  def destroy
    speciality
    if @speciality.destroy
      redirect_specialities(3)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def redirect_specialities(option)
    case option
    when 1
      redirect_to specialities_path, notice: 'New speciality created successfully'
    when 2
      redirect_to specialities_path, notice: 'Speciality was edited successfully'
    else
      redirect_to specialities_path, notice: 'Speciality was deleted successfully'
    end
  end

  def speciality
    @speciality = Speciality.find(params[:id])
  end

  def speci_params
    params.require(:speciality).permit(:name)
  end
end
