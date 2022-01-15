Rails.application.routes.draw do
  root to: 'gardens#index'
  resources :gardens, only: [:index, :show] do
    resources :plants, only: :create
  end
end
