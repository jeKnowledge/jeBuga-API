module ControllersHelper

  def is_admin?
    @current_user.admin
  end

end
