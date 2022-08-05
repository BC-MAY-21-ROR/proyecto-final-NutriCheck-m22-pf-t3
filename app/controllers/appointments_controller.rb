# frozen_string_literal: true

# Appointment class controller
class AppointmentsController < ApplicationController
  before_action :authenticate_patient!
  skip_before_action :authenticate_patient!, only: [:search]

  def index
    pagination
  end

  def search
    pagination
  end

  def new
    @appointment = Appointment.new
  end

  def show
    appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_appointment(1)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    appointment
  end

  def update
    appointment

    if @appointment.update(appointment_params)
      redirect_appointment(2)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    appointment
    if @appointment.destroy
      redirect_appointment(3)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def redirect_appointment(option)
    case option
    when 1
      redirect_to appointments_path, notice: 'New appointment created successfully'
    when 2
      redirect_to appointments_path, notice: 'Appointment was edited successfully'
    else
      redirect_to appointments_path, notice: 'Appointment was deleted successfully'
    end
  end

  def pagination
    @pagy, @appointments = pagy(Appointment.order(date_time: :desc), items: 50)
  end

  def appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(
      :date_time,
      :reason,
      :service_id,
      :patient_id,
      :user_id,
      :status,
      :payment_status,
      :score,
      :review
    )
  end
end
