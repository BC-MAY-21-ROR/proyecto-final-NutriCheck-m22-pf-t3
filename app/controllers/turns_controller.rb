class TurnsController < ApplicationController

  def index
    @turn = Turn.all
  end

  def show; end

  def create; end
end