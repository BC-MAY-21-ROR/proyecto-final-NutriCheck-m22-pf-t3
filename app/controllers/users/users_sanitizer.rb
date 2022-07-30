class UserParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: %i[email name last_name birth_date phone role speciality_id])
  end
end
