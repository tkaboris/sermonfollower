class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :lastname, :email, :password, :organization_name, :speaker_ids => []) }
    # devise_parameter_sanitizer.for(:account_update).push(:speaker_ids => [])
    # devise_parameter_sanitizer.for(:account_update).push(:speaker_ids => []) { |u| u.permit(:name, :lastname, :email, :password, :current_password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :lastname, :email, :password, :current_password, :organization_name, :speaker_ids => [])}


  end



end
