Rails.application.routes.draw do
  root to: 'home#index'
  resources :movies , only: %i[show new create]
end
