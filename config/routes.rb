Rails.application.routes.draw do
  resources :texts
  root "texts#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    get "/login" => "users/sessions#new"
  end
  resources :genres
  resources :artists

end
