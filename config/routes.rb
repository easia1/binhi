Rails.application.routes.draw do
  resources :plants do
    get :autocomplete_genus_name, :on => :collection
  end
  resources :families
  resources :genera
  resources :images
  resources :users, except: [:index]
  get "get_family", to: "plants#get_family", as: :get_family
  get "get_genus", to: "plants#get_genus", as: :get_genus
  
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root 'plants#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
