Rails.application.routes.draw do
  root 'application#index'

  resources :todos, only: :index
end
