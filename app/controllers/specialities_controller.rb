# frozen_string_literal: true

# Controller for SPECIALITIES

class SpecialitiesController < ApplicationController
  load_and_authorize_resource
  
  def index
    @specialities = Speciality.all
  end

  def new
  end

  def show
  end

  def create
    @speciality = Speciality.new(speciality_params)
    if @speciality.save
      redirect_to specialities_path, notice: 'New speciality created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @speciality.update(speciality_params)
      redirect_to specialities_path, notice: 'Speciality was edited successfully'
    else
      render :edit, stauts: :unprocessable_entity
    end
  end

  def destroy
    if @speciality.destroy
      redirect_to specialities_path, notice: 'Speciality was deleted successfully'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def speciality_params
    params.require(:speciality).permit(:name)
  end
end
