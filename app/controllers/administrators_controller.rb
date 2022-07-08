class AdministratorsController < ApplicationController

  def index
    @administrators = User.where(role: "administrator")
  end

  def new
    @administrators = User.new
  end
  
  def show
    @administrator = User.find(params[:id])
  end

  def create
    @administrator = User.new(admin_params)
    if @administrator.save
      notice 'New admin created'
    else
      notice 'ERROR'
    end
  end

  def edit
    @administrator = User.find(params[:id])
  end

  def update
    @administrator = User.find(params[:id])

    if @administrator.update(admin_params)
      notice 'Admin modify succesfully'
    else
      notice 'ERROR'
    end
  end

  def destroy
    @administrator = User.find(params[:id])
    if @administrator.destroy
      notice 'Admin deleted succesfully'
    else
      notice 'ERROR'
    end
  end

  private

  def admin_params
    params.require(:administrator).permit(:name, :last_name, :birth_date, :phone, :email, :password, :role, :speciality_id)
  end

end
