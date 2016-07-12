Rails.application.routes.draw do
  resources :likes
  #root "events#index"
  #root  "static_pages#start"
  root 'sessions#new'

  get 'start' =>  'static_pages#start'
  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  

  resources :calendars
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
