Rails.application.routes.draw do
  #get 'registrations/create'
 # get 'sessions/create'
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  namespace :api do
    namespace :v1 do
      resources :spots
      resources :baits
      resources :species
      resources :catches
      resources :users do 
        resources :spots
        resources :baits
        resources :species
        resources :catches
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
