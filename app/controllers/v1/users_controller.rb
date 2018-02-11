class V1::UsersController < ApplicationController
  skip_before_action :authenticate_request

  def create
    @user = User.new(user_params)

    if @user.save
      render :create, status: :created
    else
      @error = @user.errors.full_messages.first
      render :errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
