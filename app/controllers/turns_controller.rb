class TurnsController < ApplicationController

  def index
    @turns = Turn.all
  end

  def new
    @turn = Turn.new
  end

  def show
    turn
  end

  def create
    @turn = Turn.new(schedule_params)

    if @turn.save
      redirect_to turns_path
    end    
  end
    

  private

  def schedule_params
    params.require(:turn).permit(:schedule_id, :user_id)
  end

  def turn
    @turn = Turn.find(params[:id])
  end
end
