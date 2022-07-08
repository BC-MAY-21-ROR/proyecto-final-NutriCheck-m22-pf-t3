class ManagersController < UsersController
  def index 
    @managers = User.where(role: 'manager')
  end

  def show
    @manager = User.find(params[:id])
  end
end
