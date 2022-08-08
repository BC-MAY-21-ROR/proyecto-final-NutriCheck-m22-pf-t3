# frozen_string_literal: true

class ManagersController < UsersController
  before_action :authenticate_user!
  def index
    @managers = User.where(role: 'manager')
  end

  def show
    @manager = User.find(params[:id])
  end

  def dashboard
    @appointments_today_count = Appointment.order(date_time: :asc).where(date_time: Date.today.all_day).count
    @appointments = Appointment.order(date_time: :asc).where(date_time: Date.today.all_day)
    if params[:query_text].present?
      @appointments = @appointments.search_full_text(params[:query_text])
    end
    @pagy, @appointments = pagy(@appointments, items: 10)
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  def in_construction; end
end
