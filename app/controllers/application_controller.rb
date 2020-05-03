class ApplicationController < ActionController::Base
	  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :nom, :telephone, :sex_id, :situation_id, :statut_id, :province_id, :nationalite, :commune, :quartier, :date, :lieu, :cnamgs, :cnss, :one, :religion, :lieu_de_priere, :arrondissement_id, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :nom, :telephone, :sex_id, :situation_id, :statut_id, :province_id, :nationalite, :commune, :quartier, :date, :lieu, :cnamgs, :cnss, :one, :religion, :lieu_de_priere, :arrondissement_id, :photo])
  end
end
