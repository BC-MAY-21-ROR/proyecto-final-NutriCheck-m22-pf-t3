# frozen_string_literal: true

class ProfessionalsController < UsersController
  before_action :authenticate_user!
  def index
    @professionals = User.where(role: 'professional')
  end

  def profile
    @professional = User.find(params[:id])
    @patients = Patient.all
  end

  def show
    @professional = User.find(params[:id])
  end

  def dashboard
    @managers = User.where(role: 'profesional')
    @patients = Patient.all
    @appointments = Appointment.all
  end
end
