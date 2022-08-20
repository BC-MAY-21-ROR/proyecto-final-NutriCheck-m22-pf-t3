# frozen_string_literal: true

# Controller for SERVICES

class ServicesController < ApplicationController
  load_and_authorize_resource
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def show
    service
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_services(1)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    service
  end

  def update
    service

    if @service.update(service_params)
      redirect_services(2)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    service
    if @service.destroy
      redirect_services(3)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def redirect_services(option)
    case option
    when 1
      redirect_to services_path, notice: 'New service created successfully'
    when 2
      redirect_to services_path, notice: 'Service was edited successfully'
    else
      redirect_to services_path, notice: 'Service was deleted successfully'
    end
  end

  def service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :duration, :price)
  end
end
