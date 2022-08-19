# frozen_string_literal: true

class CardsController < ApplicationController
  def index
    @cards = Card.all
    @pagy, @cards = pagy(@cards, items: 15)
    if params[:query_text].present?
      @cards = @cards.search_full_text(params[:query_text])
    end
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
      redirect_cards(1)
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
      redirect_cards(2)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    card

    if @card.destroy
      redirect_cards(3)
    else
      redirect_to cards_path, status: :unprocessable_entity
    end
  end

  private

  def redirect_cards(option)
    case option
    when 1
      redirect_to cards_path, notice: 'Card create succesfully'
    when 2
      redirect_to cards_path, notice: 'Card updated succesfully'
    else
      redirect_to cards_path, notice: 'Card deleted succesfully'
    end
  end


  def card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:next_appointment, :weight, :comments, :patient_id, :diet_id, :appointment_id)
  end
end
