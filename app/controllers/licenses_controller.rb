# frozen_string_literal: true

# Controller for LICENSES

class LicensesController < ApplicationController
  load_and_authorize_resource
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
      redirect_to license_path(current_user.id), notice: 'New license created successfully'
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
      redirect_to license_path(current_user.id), notice: 'License was edited successfully'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    license
    if @license.destroy
      redirect_to license_path(current_user.id), notice: 'License was deleted successfully'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def license
    @license = License.find(params[:id])
  end

  def lic_params
    params.require(:license).permit(:name, :number, :user_id)
  end
end
