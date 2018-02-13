class V1::ThemesController < ApplicationController

  def create
    @theme = Theme.new(theme_params)

    if @theme.save
      render :create, status: :created
    else
      @error = @theme.errors.full_messages.first
      render partial: 'v1/common/error', status: :unprocessable_entity
    end
  end

  def index
    @themes = Theme.all
    render :index, status: :ok
  end

  private
  def theme_params
    params.require(:theme).permit(:name, :forum_id).merge(user_id: @current_user.id)
  end
end

