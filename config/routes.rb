Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  # get 'users/new'

  # get 'users/create'

  # get 'users/show'

  # get 'users/edit'

  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]

  get '/' => "static_pages#home"

  get '/about' => 'static_pages#about'

  get 'static_pages/privacy'

  get 'static_pages/legal'

 
end
