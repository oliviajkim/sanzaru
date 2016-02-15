Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]

  get '/', to: "static_pages#home"

  get '/about', to: 'static_pages#about'

  get '/privacy', to: 'static_pages#privacy'

  get '/legal', to: 'static_pages#legal'



  get '/jobs', to: 'careers#index'


end
