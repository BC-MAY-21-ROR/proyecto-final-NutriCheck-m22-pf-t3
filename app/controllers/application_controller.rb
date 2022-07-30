# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def devise_parameter_sanitizer
    if resource_class == Patient
      Patient::ParameterSanitizer.new(Patient, :patient, params)
    elsif resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
    else
      super
    end
  end
end
