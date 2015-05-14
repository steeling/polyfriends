class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :set_sport
  before_action :pundit_authorize, unless: :devise_controller?
  
  after_action :verify_authorized, unless: :devise_controller?

   def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :email, :password, :remember_me) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password) }
   end

  def set_sport
    @sports = Sport.all
    @selected_sport = session[:selected_sport]
  end

  def pundit_authorize
    variable_name = params["controller"].singularize
    authorize instance_variable_get("@#{variable_name}") || variable_name.capitalize.constantize
  end
end
