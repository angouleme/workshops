class ApplicationController < ActionController::Base

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception

  add_flash_types :error

  def authenticate_admin
   unless current_user.admin?
    redirect_to new_user_session_path
   end
  end

end
