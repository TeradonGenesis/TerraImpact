# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
    
    prepend_before_action :check_captcha, only: [:create]

      private

      def check_captcha
        @recaptcha_success = verify_recaptcha
        if @recaptcha_success && @student.save
          self.resource = resource_class.new
          resource.validate # Look for any other validation errors besides Recaptcha
          respond_with_navigational(resource) { render :new }
        else
            clean_up_passwords(resource)
            flash[:notice] = flash[:notice].to_a.concat resource.errors.full_messages
        end
      end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
