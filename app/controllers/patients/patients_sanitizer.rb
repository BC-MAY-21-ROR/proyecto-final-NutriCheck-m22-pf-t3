# frozen_string_literal: true

module Patients
  class PatientsSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
      permit(:sign_up, keys: %i[name second_name last_name second_last_name birth_date phone email height observations photo]) 
      permit(:account_update, keys: %i[name second_name last_name second_last_name birth_date phone email height observations photo])
      
    end
  end
end
