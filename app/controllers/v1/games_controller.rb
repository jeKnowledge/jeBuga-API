class V1::GamesController < ApplicationController

  def create
    @game = Game.new(game_params)

    if @game.save && is_admin?
      render status: :created
    else
      @error =
        is_admin? ? @game.errors.full_messages.first : 'no permission'
      render partial: 'v1/common/error', status: :unauthorized
    end
  end

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

  private

  def game_params
    params.require(:game).permit(:name, :thumbnail, :background_image)
  end
end
