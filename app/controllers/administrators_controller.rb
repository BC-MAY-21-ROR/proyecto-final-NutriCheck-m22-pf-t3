# frozen_string_literal: true

class AdministratorsController < UsersController
  skip_load_and_authorize_resource
  def index
    @administrators = User.where(role: 'administrator')
  end

  def show
    @administrator = User.find(params[:id])
  end

  def dashboard
    @administrators = User.where(role: 'administrator')
  end

  def patients_report
    @administrators = User.where(role: 'administrator')
    @patients = Patient.all
    

  end

  def appointments_report
    @administrators = User.where(role: 'administrator')
    @appointments = Appointment.all
    @appointments_data = Appointment.service_ids.keys.map do |service|
      if service != 'base'
      {name: service.capitalize, data: Appointment.where(service_id: service).group_by_month(:date_time).count }
      end
    end.reject(&:nil?)
  end
  
  def sales_report
    @administrators = User.where(role: 'administrator')
  end

end
