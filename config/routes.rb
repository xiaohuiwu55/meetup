Rails.application.routes.draw do
  devise_for :modes
  root 'meets#index'

  resources :meets do
    resources :comments
  end
end
