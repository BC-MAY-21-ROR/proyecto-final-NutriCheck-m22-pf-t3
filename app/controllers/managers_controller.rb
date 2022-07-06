class ManagersController < ApplicationController
  def index 
    @managers = User.where(role: 'manager')
  end

  def new
    @manager = User.new
  end

  def show
    @manager = User.find(params[:id])
  end

  def edit
    @manager = User.find(params[:id])
  end
  
  def update
    respond_to do |format|
      if @manager.update(manager_params)
        format.html { redirect_to manager_url(@manager), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @manager }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end

  end

  private

  def manager_params
    params.require(:user).permit(:name, :last_name, :birth_date, :phone, :email, :password, :role, :speciality_id)
  end


end
