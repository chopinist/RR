class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # Pundit gem for authorization
  include Pundit

  protect_from_forgery with: :exception

  # Permitted parameters for the sign_up and account_update Devise actions
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      permitted_parameters = [:first_name, :last_name, :instrument]

      devise_parameter_sanitizer.for(:sign_in) << permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << permitted_parameters
      devise_parameter_sanitizer.for(:account_update) << permitted_parameters
    end
end
