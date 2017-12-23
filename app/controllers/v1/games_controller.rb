class V1::GamesController < ApplicationController
  def index
    @games = Game.first
    render :index, status: :ok
  end
end
