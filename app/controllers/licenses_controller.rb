# frozen_string_literal: true

# Controller for LICENSES

class LicensesController < ApplicationController
  authorize_resource

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
    @license = License.new(license_params)
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

    if @license.update(license_params)
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

  def license_params
    params.require(:license).permit(:user_id, :name, :number)
  end
end
