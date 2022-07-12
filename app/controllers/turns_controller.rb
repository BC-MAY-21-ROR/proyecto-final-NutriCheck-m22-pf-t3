# frozen_string_literal: true

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

  def turn
    @turn = Turn.find(params[:id])
  end
end
