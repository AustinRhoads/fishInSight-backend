Rails.application.routes.draw do
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
