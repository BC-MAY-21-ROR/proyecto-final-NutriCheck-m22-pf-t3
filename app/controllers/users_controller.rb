# frozen_string_literal: true

# Users controllers with crud functions
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      if @user.role == 'administrator'
        redirect_to administrator_path(@user), notice: 'New Administrator Created'
      elsif @user.role == 'manager'
        redirect_to manager_path(@user), notice: 'New Manager Created'
      elsif @user.role == 'professional'
        redirect_to professional_path(@user), notice: 'New Professional Created'
      else
        redirect_to users_path, notice: 'New User Created'
      end
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      if @user.role == 'administrator'
        redirect_to administrator_path(@user), notice: 'New Administrator Created'
      elsif @user.role == 'manager'
        redirect_to manager_path(@user), notice: 'New Manager Created'
      elsif @user.role == 'professional'
        redirect_to professional_path(@user), notice: 'New Professional Created'
      else
        redirect_to users_path, notice: 'New User Created'
      end
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path, notice: 'User Deleted Ok'
    else
      redirect_to users_path, :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :last_name, :birth_date, :phone, :email, :password, :role, :speciality_id)
  end
end
