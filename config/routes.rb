Rails.application.routes.draw do
  resources :reviews
  resources :registrations
  resources :sessions
  resources :coaches
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#create'
  get '/decode_token', to: 'users#profile'
end
