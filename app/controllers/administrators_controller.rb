# frozen_string_literal: true

class AdministratorsController < UsersController
  before_action :authenticate_user!
  def index
    @administrators = User.where(role: 'administrator')
  end

  def show
    @administrator = User.find(params[:id])
  end

  def dashboard
    @administrators = User.where(role: 'administrator')
  end
end
