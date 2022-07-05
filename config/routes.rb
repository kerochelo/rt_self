Rails.application.routes.draw do
  root 'tweets#index'
  resources :tweets, only: [:index] do
    post :collect, on: :collection
  end
end
