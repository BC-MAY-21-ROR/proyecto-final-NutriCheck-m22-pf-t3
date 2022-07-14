# frozen_string_literal: true

class DietsController < ApplicationController
  def index
    @diets = Diet.all
  end

  def show
    @diet = Diet.find(params[:id])
  end

  def new
    @diet = Diet.new
  end

  def create
    @diet = Diet.new(diet_params)

    if @diet.save
      redirect_to diets_path, notice: 'Diet create succesfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @diet = Diet.find(params[:id])
  end

  def update
    @diet = Diet.find(params[:id])

    if @diet.update(diet_params)
      redirect_to diets_path, notice: 'Diet updated succesfully'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @diet = Diet.find(params[:id])

    if @diet.destroy
      redirect_to diets_path, notice: 'Diet deleted succesfully'
    else
      redirect_to diets_path, status: :unprocessable_entity
    end
  end

  private

  def diet_params
    params.require(:diet).permit(:name, :description, :comments)
  end
end
