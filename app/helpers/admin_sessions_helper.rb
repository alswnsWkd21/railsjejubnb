module AdminSessionsHelper
  def is_admin_login?
    if session[:admin_id].present?
      true
    else
      false
    end
  end
end