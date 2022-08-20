# frozen_string_literal: true

# Controller for SPECIALITIES

class SpecialitiesController < ApplicationController
  load_and_authorize_resource

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
    if @speciality.save
      redirect_to specialities_path, notice: 'New speciality created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    speciality
  end

  def update
    speciality

    if @speciality.update(speciality_params)
      redirect_to specialities_path, notice: 'Speciality was edited successfully'
    else
      render :edit, stauts: :unprocessable_entity
    end
  end

  def destroy
    speciality
    if @speciality.destroy
      redirect_to specialities_path, notice: 'Speciality was deleted successfully'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def speciality
    @speciality = Speciality.find(params[:id])
  end

  def speciality_params
    params.require(:speciality).permit(:name)
  end
end
