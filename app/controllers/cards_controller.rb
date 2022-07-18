# frozen_string_literal: true

class CardsController < ApplicationController
  def index
    @cards = Card.where(patient_id: params[:format])
    @patients = Patient.all
  end

  def show
    @card = Card.find(params[:id])
  end
  
  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to cards_path, notice: 'Card create succesfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])

    if @card.update(card_params)
      redirect_to cards_path, notice: 'Card updated succesfully'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @card = Card.find(params[:id])

    if @card.destroy
      redirect_to cards_path, notice: 'Card deleted succesfully'
    else
      redirect_to cards_path, status: :unprocessable_entity
    end
  end

  private

  def card_params
    params.require(:card).permit(:next_appointment, :weight, :comments, :patient_id, :diet_id)
  end
end
