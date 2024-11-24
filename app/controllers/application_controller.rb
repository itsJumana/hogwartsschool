class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :date_of_birth, :bio, :muggle_relative])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :date_of_birth, :bio, :muggle_relative])
  end

  private
  
  def authorize_wizard_or_admin(wizard)
    unless current_wizard == wizard || current_wizard.admin?
      redirect_to root_path, alert: "You are not authorized to perform this action."
    end
  end
end
