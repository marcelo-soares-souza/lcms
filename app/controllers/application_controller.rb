class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:fullname])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  end

  def check_if_admin
    if signed_in?
      if ! current_user.admin?
        redirect_to root_url, alert: "Permission Denied"
      end
    end
  end
end
