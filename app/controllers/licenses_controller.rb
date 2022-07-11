# Controller for LICENSES

class LicensesController < ApplicationController
  def index
    @licences = License.all
  end

  def new
    @licence = License.new
  end

  def show
    @licence = License.find(params[:id])
  end

  def create
    @licence = License.new(lic_params)
    if @licence.save
      redirect_to licences_path, notice: 'New licence created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @licence = License.find(params[:id])
  end

  def update
    @licence = License.find(params[:id])

    if @licence.update(lic_params)
      redirect_to licences_path, notice: 'License was edited successfully'
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    @licence = License.find(params[:id])
    if @licence.destroy
      redirect_to licences_path, notice: 'License was deleted successfully'
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def lic_params
    params.require(:licence).permit(:type, :number, :user_id)
  end
end
