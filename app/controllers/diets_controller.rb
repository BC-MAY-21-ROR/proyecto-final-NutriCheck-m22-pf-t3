# frozen_string_literal: true

class DietsController < ApplicationController
  before_action :authenticate_user!
  def index
    @diets = Diet.all
  end

  def show
    diet
  end

  def new
    @diet = Diet.new
  end

  def create
    @diet = Diet.new(diet_params)

    if @diet.save
      redirect_diets(1)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    diet
  end

  def update
    diet

    if @diet.update(diet_params)
      redirect_diets(2)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    diet

    if @diet.destroy
      redirect_diets(3)
    else
      redirect_to diets_path, status: :unprocessable_entity
    end
  end

  private

  def redirect_diets(option)
    case option
    when 1
      redirect_to diets_path, notice: 'Diet create succesfully'
    when 2
      redirect_to diets_path, notice: 'Diet updated succesfully'
    else
      redirect_to diets_path, notice: 'Diet deleted succesfully'
    end
  end

  def diet
    @diet = Diet.find(params[:id])
  end

  def diet_params
    params.require(:diet).permit(:name, :description, :comments)
  end
end
