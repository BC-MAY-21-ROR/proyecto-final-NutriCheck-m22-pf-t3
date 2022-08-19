# frozen_string_literal: true

module Users
  class UsersSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
      permit(:sign_up, keys: %i[name last_name birth_date phone email speciality_id role])
    end
  end
end
