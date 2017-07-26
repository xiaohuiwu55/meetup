Rails.application.routes.draw do
  devise_for :modes
  root 'meetuplist#index'
end
