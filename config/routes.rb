Rails.application.routes.draw do
  root to: 'playgrounds#index'

  resources :playgrounds, only: [:index, :show, :new, :create] do
    resources :events, only: [:create]
  end
  resources :events, only: [:destroy]
end
