# frozen_string_literal: true

module Users
  class UsersSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
      permit(:sign_up, keys: %i[email name last_name birth_date phone role speciality_id])
      permit(:account_update, keys: %i[email name last_name birth_date phone role speciality_id])
    end
  end
end
