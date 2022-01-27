class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :update_allowed_parameters, if: :devise_controller?
	before_action :set_search

	def set_search
		@q = Plant.ransack(params[:q])
	end

	protected

	def update_allowed_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :username, :occupation, :email, :password, :password_confirmation)}
		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :username, :occupation, :email, :password, :current_password)}
	end
end
