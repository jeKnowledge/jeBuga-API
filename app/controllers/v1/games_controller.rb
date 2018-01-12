class V1::GamesController < ApplicationController
  def index
    @games = Game.all
    render :index, status: :ok
  end
end
