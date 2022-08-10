# frozen_string_literal: true

# Users controllers with crud functions
class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    require_admin_session
    @users = User.all.with_attached_photo
  end

  def show
    user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

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
      if @user.role=="administrator"
        redirect_to edit_administrator_path, notice: "Edit fail"
      if @user.role=="professional"
        redirect_to edit_professional_path, notice: "Edit fail"
      if @user.role=="manager"
        redirect_to edit_manager_path, notice: "Edit fail"
      end
    end
  end

  def destroy
    user
    if @user.destroy
      user_role
    else
      redirect_to users_path, :unprocessable_entity
    end
  end

  private

  def user_role
    case @user.role
    when 'administrator'
      redirect_to administrators_path, notice: 'Administrator successfully'
    when 'manager'
      redirect_to managers_path, notice: 'Manager successfully'
    when 'professional'
      redirect_to professionals_path, notice: 'Professional successfully'
    else
      redirect_to users_path, notice: 'User successfully'
    end
  end

  def user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :last_name, :birth_date, :phone, :email, :password, :role, :speciality_id,
                                 :photo)
  end
end
