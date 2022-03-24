Rails.application.routes.draw do
  devise_for :users
  root to: 'flats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats do
    resources :rentings, only: [:create]
  end

  resources :rentings, except: [:show, :new, :create]
end
