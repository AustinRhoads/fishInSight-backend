Rails.application.routes.draw do
  #get 'registrations/create'
 # get 'sessions/create'
 root to: "application#cookie"
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: 'sessions#logout'

  get '/auth/gogle_oauth2/callback' => 'sessions#create'

  #get :logged_in, to: 'sessions#logged_in'
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
