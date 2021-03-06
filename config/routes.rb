Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :auth, only: [:create]
      resources :orders
      resources :reviews
      resources :items
      
      post '/signup', to: 'users#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
