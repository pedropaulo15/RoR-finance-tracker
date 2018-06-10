class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  protected
  def configure_permitted_parameters
    # Including First Name and Last name in the permitterd parameters For Signup
    devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name])
    # Including First Name and Last name in the permitterd parameters For Edit
    devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name])
  end
end