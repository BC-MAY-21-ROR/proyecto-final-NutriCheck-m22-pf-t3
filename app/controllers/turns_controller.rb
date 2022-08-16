# frozen_string_literal: true

class TurnsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def index
    @turns = Turn.all
  end

  def new
  end

  def show
    turn
  end

  def create
    if @turn.save
      redirect_to turns_path, notice: 'Turn create succesfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    turn
  end

  def update
    turn

    if @turn.update(schedule_params)
      redirect_to turns_path, notice: 'Turn edit'
    else
      redirect_to edit_turn, :unprocessable_entity
    end
  end

  def destroy
    turn

    if @turn.destroy
      redirect_to turns_path, notice: 'Turn deleted'
    else
      redirect_to edit_turn :unprocessable_entity
    end
  end

  private

  def schedule_params
    params.require(:turn).permit(:schedule_id, :user_id)
  end
end
