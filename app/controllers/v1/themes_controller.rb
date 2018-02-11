class V1::ThemesController < ApplicationController

  def create
    @theme = Theme.new(theme_params)

    if @theme.save
      render :create, status: :created
    else
      @error = @theme.errors.full_messages.first
      render :errors, status: :unprocessable_entity
    end
  end

  def index
    @themes = Theme.all
    render :index, status: :ok
  end

  private
  def theme_params
    params.require(:theme).permit(:name, :forum_id, :user_id)
  end
end

