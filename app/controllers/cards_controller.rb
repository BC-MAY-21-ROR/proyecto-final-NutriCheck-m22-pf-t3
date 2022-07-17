# frozen_string_literal: true

class CardsController < ApplicationController
  def index
    @cards = Card.where(patient_id: params[:format])
  end

  def show
    card
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
    card
  end

  def update
    card

    if @card.update(card_params)
      redirect_to cards_path, notice: 'Card updated succesfully'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    card

    if @card.destroy
      redirect_to cards_path, notice: 'Card deleted succesfully'
    else
      redirect_to cards_path, status: :unprocessable_entity
    end
  end

  private

  def card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:next_appointment, :weight, :comments, :patient_id, :diet_id)
  end
end
