Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :donations
  resources :animal_histories
  resources :vets
  resources :donor_types
  resources :addresses
  resources :animals
  root to: 'homes#index'
  get '/zip_code/:zip_code', to: 'utils#zip_code', defaults: { format: 'json' }
end
