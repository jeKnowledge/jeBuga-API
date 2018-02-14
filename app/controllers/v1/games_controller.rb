class V1::GamesController < ApplicationController

  def index
    @games = Game.all
    render :index, status: :ok
  end

  def show
    @game = Game.find(params[:id])

    if @game
      render :show, status: :ok
    else
      head(:unprocessable_entity)
    end
  end
end
