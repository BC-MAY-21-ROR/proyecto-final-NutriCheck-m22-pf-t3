# frozen_string_literal: true

class ProfessionalsController < UsersController
  def index
    @professionals = User.where(role: 'professional')
  end
  
  def profile
    @professional = User.find(params[:id])
  end

  def show
    @professional = User.find(params[:id])
  end
end
