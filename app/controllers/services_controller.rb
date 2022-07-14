# frozen_string_literal: true

# Controller for SERVICES

class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def show
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(ser_params)
    if @service.save
      redirect_to services_path, notice: 'New service created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.update(ser_params)
      redirect_to services_path, notice: 'Service was edited successfully'
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    @service = Service.find(params[:id])
    if @service.destroy
      redirect_to services_path, notice: 'Service was deleted successfully'
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def ser_params
    params.require(:service).permit(:name, :duration, :price)
  end
end
