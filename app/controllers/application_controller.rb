# frozen_string_literal: true


require 'users/users_sanitizer'
require 'patients/patients_sanitizer'


class ApplicationController < ActionController::Base
  protected

  def devise_parameter_sanitizer
    if resource_class == Patient
      PatientParameterSanitizer.new(Patient, :patient, params)
    elsif resource_class == User
      UserParameterSanitizer.new(User, :user, params)
    else
      super
    end
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
