class V1::ThemesController < ApplicationController
  def index
    @theme = User.where
  end

  private
  def index_params
    params.require(:theme)
  end
end
