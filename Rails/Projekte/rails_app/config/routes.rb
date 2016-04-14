Rails.application.routes.draw do
  root "events#index"

  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  resources :users
  resource :session

  resources :events do
    resources :registrations
  end
  
end
