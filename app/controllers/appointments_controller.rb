# frozen_string_literal: true

# Appointment class controller
class AppointmentsController < ApplicationController
  load_and_authorize_resource
  def index
    pagination
  end

  def search
    @appointments = Appointment.all.order(date_time: :desc)
    if params[:query_text].present?
      @appointments = @appointments.search_full_text(params[:query_text])
    end
    pagination
  end

  def new
    @appointment = Appointment.new
  end

  def show
    @card = Card.new
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
    @appointments = Appointment.all
    @pagy, @appointments = pagy(@appointments, items: 50)
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
