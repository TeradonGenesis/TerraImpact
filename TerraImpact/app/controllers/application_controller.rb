class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        added_attrs_sign_up = [:name, :username, :email, :password, :password_confirmation, :avatar, :description, :admin]
        added_attrs_update = [:name, :username, :email, :password, :password_confirmation, :current_password, :avatar, :description, :admin]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs_sign_up
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs_update
    end
    
    def render_not_found
        render :file => "#{RAILS_ROOT}/public/404.html",  :status => 404
    end
    
    def not_found
      raise ActionController::RoutingError.new('Not Found')
    end
    
end
