# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]

    protected

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password])
    end
  end
end
