# frozen_string_literal: true

# Appointment class controller
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
    if @appointment.save
      redirect_to appointments_path, notice: 'New appointment created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])

    if @appointment.update(appointment_params)
      redirect_to appointments_path, notice: 'Appointment was edited successfully'
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    if @appointment.destroy
      redirect_to appointments_path, notice: 'Appointment was deleted successfully'
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_time, :reason, :service_id, :patient_id, :user_id, :status,
                                        :payment_status, :score, :review)
  end
end
