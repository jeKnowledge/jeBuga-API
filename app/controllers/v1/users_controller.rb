class V1::UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      render :create, status: :created
    else
      @errors = @user.errors
      render :errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
