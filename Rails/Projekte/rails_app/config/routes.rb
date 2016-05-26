Rails.application.routes.draw do
  resources :likes
  root "events#index"

  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  resources :users
  resource :session

  resources :events do
    #member do

    #end

    collection do
      get 'past'
    end
    resources :registrations
    resources :likes
  end
  
end
