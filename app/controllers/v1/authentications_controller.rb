class V1::AuthenticationsController < ApplicationController
  skip_before_action :authenticate_request

  def create
    command = AuthenticateUser.call(params[:user][:username], params[:user][:password])

    if command.success?
      render json: { data:{ auth:{ token: command.result }}}, status: :created
    else
      render json: { data: { error: command.errors }}, status: :unauthorized
    end
  end

end
