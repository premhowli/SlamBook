class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
layout :layout_by_resource

 def layout_by_resource
    if devise_controller? 
      "slambook"
    elsif resource_name == :user
      "application"
    else
      "application"
    end
  end

 
 before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :name, :sex) }
  end


end
