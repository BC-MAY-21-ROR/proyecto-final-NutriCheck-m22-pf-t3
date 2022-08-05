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
      case @user.role
      when 'administrator'
        redirect_to administrator_path(@user), notice: 'New Administrator Created'
      when 'manager'
        redirect_to manager_path(@user), notice: 'New Manager Created'
      when 'professional'
        redirect_to professional_path(@user), notice: 'New Professional Created'
      else
        redirect_to users_path, notice: 'New User Created'
      end
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    user
  end

  def update
    user
    if @user.update(user_params)
      case @user.role
      when 'administrator'
        redirect_to administrator_path(@user), notice: 'New Administrator Created'
      when 'manager'
        redirect_to manager_path(@user), notice: 'New Manager Created'
      when 'professional'
        redirect_to professional_path(@user), notice: 'New Professional Created'
      else
        redirect_to users_path, notice: 'New User Created'
      end
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    user
    if @user.destroy
      case @user.role
      when 'administrator'
        redirect_to administrators_path, notice: 'New Administrator Created'
      when 'manager'
        redirect_to managers_path, notice: 'New Manager Created'
      when 'professional'
        redirect_to professionals_path, notice: 'New Professional Created'
      else
        redirect_to users_path, notice: 'New User Created'
      end

    else
      redirect_to users_path, :unprocessable_entity
    end
  end

  private

  def user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :last_name, :birth_date, :phone, :email, :password, :role, :speciality_id, :photo)
  end
end
