class ApplicationController < ActionController::Base
  # emailとpassword以外の値も保存できるように追記するため
  before_action :configure_permitted_parameters, if: :devise_controller?
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
