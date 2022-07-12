# Controller for SPECIALITIES

class SpecialitiesController < ApplicationController
  def index
    @specialities = Speciality.all
  end

  def new
    @speciality = Speciality.new
  end

  def show
    @speciality = Speciality.find(params[:id])
  end

  def create
    @speciality = Speciality.new(speci_params)
    if @speciality.save
      redirect_to specialities_path, notice: 'New speciality created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @speciality = Speciality.find(params[:id])
  end

  def update
    @speciality = Speciality.find(params[:id])

    if @speciality.update(speci_params)
      redirect_to specialities_path, notice: 'Speciality was edited successfully'
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    @speciality = Speciality.find(params[:id])
    if @speciality.destroy
      redirect_to specialities_path, notice: 'Speciality was deleted successfully'
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def speci_params
    params.require(:speciality).permit(:name)
  end
end
