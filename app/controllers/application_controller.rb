class ApplicationController < ActionController::API
  include StringHelper
  include AuthenticateHelper
  include ControllersHelper
  before_action :authenticate_request
end
