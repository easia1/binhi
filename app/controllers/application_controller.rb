class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :update_allowed_parameters, if: :devise_controller?
	before_action :set_search

	def set_search
		q = params[:q]
		@plants_search = Plant.ransack(specific_epithet_or_grex_or_infraspecies_name_or_cultivar_group_or_cultivar_or_common_names_name_or_synonyms_genus_or_synonyms_specific_epithet_or_synonyms_grex_or_synonyms_infraspecies_name_or_synonyms_cultivar_group_or_synonyms_cultivar_or_genus_name_cont_any: q)
		@families_search = Family.ransack(name_cont: q)
		@genera_search = Genus.ransack(name_cont: q)
	end

	protected

	def update_allowed_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :username, :occupation, :email, :password, :password_confirmation)}
		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :username, :occupation, :email, :password, :current_password)}
	end
end
