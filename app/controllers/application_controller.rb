# frozen_string_literal: true

require 'users/users_sanitizer'
require 'patients/patients_sanitizer'
class ApplicationController < ActionController::Base
  include Pagy::Backend
  # before_action :configure_permitted_parameters, if :devise_controller?
  protected
  
    # def configure_permitted_parameters
    #   devise_parameter_sanitizer.permit(:account_update, keys: %i[email name last_name birth_date phone role speciality_id])
    # end

  def require_login
    redirect_to root_url, notice: 'Please log-in as an User to view that page!' unless current_user
  end
  
  def is_admin
    current_user.admin?
  end
  def require_admin_session
    return if current_user.role == 'administrator'

    redirect_to root_url, notice: 'You have no permission to access that page.'
  end
  def current_ability
    if patient_signed_in?
      @current_ability ||= Ability.new(current_patient)
    else
      @current_ability ||= Ability.new(current_user)
    end
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
      case resource.role
      when 'manager'
        dashboard_managers_path
      when 'administrator'
        dashboard_administrators_path
      else
        dashboard_professionals_path
      end
    elsif resource.instance_of?(Patient)
      dashboard_patients_path
    end
  end
end
