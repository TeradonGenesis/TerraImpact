class RegistrationsController < Devise::RegistrationsController 

	private

	def sign_up_params 
		params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :avatar, :description)
	end

	def acount_update_params 
		params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password, :avatar, :description)
	end

end
