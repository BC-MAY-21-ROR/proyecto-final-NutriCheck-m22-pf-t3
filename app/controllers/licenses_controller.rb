# frozen_string_literal: true

# Controller for LICENSES

class LicensesController < ApplicationController
  before_action :authenticate_user!
  def index
    @licenses = License.all
  end

  def new
    @license = License.new
  end

  def show
    @license = License.where("user_id = #{params[:id]}")
  end

  def create
    @license = License.new(lic_params)
    if @license.save
      redirect_professionals(1)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    license
  end

  def update
    license

    if @license.update(lic_params)
      redirect_professionals(2)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    license
    if @license.destroy
      redirect_professionals(3)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def redirect_professionals(option)
    case option
    when 1
      redirect_to professionals_path, notice: 'New license created successfully'
    when 2
      redirect_to professionals_path, notice: 'License was edited successfully'
    else
      redirect_to professionals_path, notice: 'License was deleted successfully'
    end
  end


  def license
    @license = License.find(params[:id])
  end

  def lic_params
    params.require(:license).permit(:name, :number, :user_id)
  end
end
