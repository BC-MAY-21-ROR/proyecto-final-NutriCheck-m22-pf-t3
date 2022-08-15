class RegistrationsController < Devise::RegistrationsController
  
  skip_before_action :authenticate_admin!, :require_no_authentication
  protected

end
