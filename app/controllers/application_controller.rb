# frozen_string_literal: true

require 'users/users_sanitizer'
require 'patients/patients_sanitizer'
class ApplicationController < ActionController::Base

  include Pagy::Backend

  protected

  def require_login
    redirect_to root_url, notice: 'Please log-in as an User to view that page!' unless current_user
  end

  def devise_parameter_sanitizer
    if resource_class == Patient
      Patients::PatientsSanitizer.new(Patient, :patient, params)
    elsif resource_class == User
      Users::UsersSanitizer.new(User, :user, params)
    else
      super
    end
  end

  def after_sign_in_path_for(resource)
    # check for the class of the object to determine what type it is
    if resource.instance_of?(User)
      if resource.role == 'manager'
        dashboard_managers_path
      elsif resource.role == 'administrator'
        dashboard_administrators_path
      else
        dashboard_professionals_path
      end
    elsif resource.instance_of?(Patient)
      dashboard_patients_path
    end
  end
end
