class Patient::ParameterSanitizer < Devise::ParameterSanitizer
    def initialize(*)
      super
      permit(:sign_up, keys: [:username, :email, :name, :last_name, :birth_date, :phone, :height])
    end
  end