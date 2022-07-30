# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[speciality_id photo])
  end

  def after_sign_in_path_for(resource)
    # check for the class of the object to determine what type it is
    if resource.instance_of?(User)
      if resource.role == 'manager'
        manager_dashboard_path
      elsif resource.role == 'administrator'
        administrator_dashboard_path
      else
        professional_dashboard_path
      end
    elsif resource.instance_of?(Patient)
      patient_dashboard_path
    end
  end
end
