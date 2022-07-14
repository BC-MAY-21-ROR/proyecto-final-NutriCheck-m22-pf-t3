# frozen_string_literal: true

class AppointmentsController < ApplicationController
    def index
      @appointments = Appointment.all
    end
  
    def new
      @appointment = Appointment.new
    end
  
    def show
      @appointment = Appointment.find(params[:id])
    end
  
    def create
      @appointment = Appointment.new(appointment_params)
      @appointment.save
      redirect_to appointments_path if @appointment.save
    end
  
    def edit
      @appointment = Appointment.find(params[:id])
    end
  
    def update
      @appointment = Appointment.find(params[:id])
  
      if @appointment.update(appointment_params)
  
      end
    end
  
    def destroy
      @appointment = Appointment.find(params[:id])
      if @appointment.destroy
        notice 'Appointment deleted succesfully'
      else
        notice 'ERROR'
      end
    end
  
    private
  
    def appointment_params
      params.require(:appointment).permit(:date_time, :reason)
    end
  end
  