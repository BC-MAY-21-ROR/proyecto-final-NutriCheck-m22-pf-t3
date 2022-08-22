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
  end

  def appointments_report
    @administrators = User.where(role: 'administrator')
  end
  
  def sales_report
    @administrators = User.where(role: 'administrator')
  end

end
