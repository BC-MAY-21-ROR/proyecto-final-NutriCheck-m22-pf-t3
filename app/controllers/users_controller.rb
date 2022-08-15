# frozen_string_literal: true



# Users controllers with crud functions

class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
  end

  def show
    user
  end

  def new
  end


  def create
    if @user.save
      user_role
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    user
  end

  def update
    user
    if @user.update(user_params)
      user_role
    else
      case @user.role
      when 'administrator'
        redirect_to edit_administrator_path, notice: 'Edit administrator fail'
      when 'professional'
        redirect_to edit_professional_path, notice: 'Edit professional fail'
      when 'manager'
        redirect_to edit_manager_path, notice: 'Edit manager fail'
      else
        render :new, notice: 'No exist'
      end
    end
  end

  def destroy
    if @user.destroy
      user_role
    else
      redirect_to users_path, :unprocessable_entity
    end
  end

  private

  def user_role
    case current_user.role
    when 'administrator'
      case @user.role
      when 'manager'
        redirect_to managers_path, notice: 'Manager was edited successfully'
      when 'professional'
        redirect_to professionals_path, notice: 'Professional was edited successfully'
      else
        redirect_to administrator_dashboard_path, notice: 'Administrador was edited successfully'
      end
    when 'manager'
      if @user.role == 'professional'
        redirect_to professionals_path, notice: 'Professional was edited successfully'
      else
        redirect_to manager_dashboard_path, notice: 'Manager was edited successfully'
      end
    when 'professional'
      redirect_to professional_dashboard_path, notice: 'Professional was edited successfully'
    else
      redirect_to users_path, notice: 'User was edited successfully'
    end
  end


  def user_params
    params.require(:user).permit(:name, :last_name, :birth_date, :password, :password_confirmation ,:phone, :current_password, :email, :speciality_id, :photo, :role)
  end
end
