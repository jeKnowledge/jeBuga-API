class ApplicationController < ActionController::API
  include StringHelper
  include AuthenticateHelper
  before_action :authenticate_request
end
