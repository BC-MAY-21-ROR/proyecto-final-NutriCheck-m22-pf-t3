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
    @appointments = Appointment.all
    @services = Service.all

    
    

  end

  def appointments_report
    @administrators = User.where(role: 'administrator')
    @appointments = Appointment.all
    # @start = params[:start].to_date
    # @end = params[:end].to_date
    # pp @start
    # pp @end
    # @range = (@start..@end)
    # pp @range
    @appointments_data = Appointment.service_ids.keys.map do |service|
      if service != 'base'
      {name: service.capitalize, data: Appointment.where(service_id: service).group_by_month(:date_time).count }
      end
    end.reject(&:nil?)
    # @appointments_data
  end
  
  def sales_report
    @administrators = User.where(role: 'administrator')
    @services = Service.all
    @appointments = Appointment.all
    @sales_overview = Appointment
      .select(<<~SQL)
      COUNT(*) AS total_appointments
      , services.name AS service_name
      , MIN(services.price) * COUNT(*) AS total_price
      , DATE_TRUNC('month', date_time::timestamptz AT TIME ZONE 'Etc/UTC')::date AS date_time
      SQL
      .joins(:service)
      .group(:service_id, :name)
      .group_by_month(:date_time)
      .order('date_time')
    # @start = params[:start].to_date
    # @end = params[:end].to_date
    # pp @start
    # pp @end
    # @range = (@start..@end)
    # pp @range
    @appointments_data = Appointment.service_ids.keys.map do |service|
      if service != 'base'
        {name: service.capitalize, data: Appointment.where(service_id: service).group_by_month(:date_time).count }
      end
    end.reject(&:nil?)

  end

end
