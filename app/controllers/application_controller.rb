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

end
