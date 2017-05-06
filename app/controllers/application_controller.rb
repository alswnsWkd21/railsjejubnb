class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def authenticate_admin_login
    unless helpers.is_admin_login?
      redirect_to admin_login_url
    end
  end
end