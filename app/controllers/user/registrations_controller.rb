# frozen_string_literal: true

# Registrations Controller
class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permited_parameters

  protected

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[first_name last_name])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[first_name last_name])
  end
end
