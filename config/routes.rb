Rails.application.routes.draw do
  resources :actus
  get 'menus/index'
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
  get 'accueil/index'
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
    root 'menus#index', as: :authenticated_root
  end
  root "accueil#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
