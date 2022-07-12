# frozen_string_literal: true

class AdministratorsController < UsersController
  def index
    @administrators = User.where(role: 'administrator')
  end

  def show
    @administrator = User.find(params[:id])
  end
end
