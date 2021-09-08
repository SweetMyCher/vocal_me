Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root "artists#index"
  resources :artists

  devise_scope :user do
    get "/login" => "users/sessions#new"
  end
end
