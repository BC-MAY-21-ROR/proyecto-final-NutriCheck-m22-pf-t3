# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    def update_resource(resource, params)
      resource.update_with_password(params)
    end
    # before_action :authenticate_user!, :redirect_unless_admin, only: %i[new create]
    # skip_before_action :require_no_authentication

    # private

    # def redirect_unless_admin
    #   unless current_user.role == 'professional'
    #     flash[:error] = 'Only admins can do that'
    #     redirect_to root_path
    #   end
    # end

    # def sign_up(_resource_name, _resource)
    #   true
    # end

  end
end
