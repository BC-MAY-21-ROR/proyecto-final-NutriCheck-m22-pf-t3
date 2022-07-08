class AdministratorsController < UsersController
  def index 
    @administrators = User.where(role: 'administrator')
  end

  def show
    @administrators = User.find(params[:id])
  end

end
