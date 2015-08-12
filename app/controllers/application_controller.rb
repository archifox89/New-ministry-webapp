class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


before_filter :configure_permitted_parameters, if: :devise_controller?

protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:employee_name, :email, :password) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:employee_name, :email, :password, :current_password) }
    end

def after_sign_in_path_for(resource_or_scope)
   main_path
end

def after_sign_out_path_for(resource_or_scope)
  new_user_session_path

end

end
