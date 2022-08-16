# frozen_string_literal: true

class ProfessionalsController < UsersController
  skip_load_and_authorize_resource
  
  def index
    @professionals = User.where(role: 'professional')
  end
  def edit
    @professional = User.find(params[:id])
  end
  def update
        @professional = User.find(params[:id])
  end
  def profile
    @professional = User.find(params[:id])
    @patients = Patient.all
  end

  def show
    @professional = User.find(params[:id])
  end

  def dashboard
    @professionals = User.where(role: 'professional')
    @patients = Patient.all
    @appointments = Appointment.all
    @appointments_today_count = Appointment.order(date_time: :asc).where(date_time: Date.today.all_day).where(user_id: current_user.id).count
    @appointments = Appointment.order(date_time: :asc).where(date_time: Date.today.all_day)
  end
end
