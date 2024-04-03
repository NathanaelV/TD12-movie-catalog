Rails.application.routes.draw do
  root to: 'home#index'
  resources :movies, only: %i[show new create edit update]
  resources :directors, only: %i[index show new create edit update]
end
