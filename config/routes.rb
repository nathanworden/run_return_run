Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  
  root "static_pages#homepage"

  resources :workshops
end
