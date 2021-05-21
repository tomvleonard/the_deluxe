Rails.application.routes.draw do
  devise_for :admins
  resources :admins
  resources :events
  resources :home, only: [ :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
