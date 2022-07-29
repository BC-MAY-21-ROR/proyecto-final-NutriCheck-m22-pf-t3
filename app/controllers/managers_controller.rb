# frozen_string_literal: true

class ManagersController < UsersController
  def index
    @managers = User.where(role: 'manager')
  end

  def show
    @manager = User.find(params[:id])
  end

  def dashboard
    @managers = User.where(role: 'manager')
    @patients = Patient.all
  end

  def in_construction; end
end
