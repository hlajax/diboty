Rails.application.routes.draw do
  resources :comptes
  resources :actualites
  resources :dashboard
  resources :actus
  resources :menus
  resources :banques
  resources :distribues
  devise_for :chefs
  resources :signalements
  resources :habitats
  resources :statuts
  resources :kits
  resources :natures
  resources :don_numeraires
  resources :dons
  resources :accueil
  resources :loyerentreprises
  resources :piece_locataires
  resources :loyers
  resources :constructions
  resources :arrondissements
  resources :types
  resources :situations
  resources :pieces
  resources :sexes
  resources :villes
  resources :provinces
    authenticated :chef do
    root 'dashboard#index', as: :authenticated_root
  end
    devise_scope :chef do
    get '/chefs/sign_out' => 'devise/sessions#destroy'
  end
  root "accueil#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
