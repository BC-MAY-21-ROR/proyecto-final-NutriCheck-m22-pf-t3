class ProfessionalsController < UsersController
  def index
    @professionals = User.where(role: 'professional')
  end


  def show
    @professional = User.find(params[:id])
  end
end
