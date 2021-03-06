Rails.application.routes.draw do

 root to: "static_pages#home"

  get '/about', to: 'static_pages#about'

  # GAMES PAGES
  get '/games', to: 'static_pages#games'
  get '/games/tron-run-r', to: 'static_pages#tron-run-r'
  get '/games/vr-sports-challenge', to: 'static_pages#vr-sports-challenge'
  get '/games/sonic-fire-ice', to: 'static_pages#sonic-fire-ice'
  get '/games/sonic-shattered-crystal', to: 'static_pages#sonic-shattered-crystal'
  get '/games/god-of-war-collection', to: 'static_pages#god-of-war-collection'
  get '/games/bentleys-hackpack', to: 'static_pages#bentleys-hackpack'
  get '/games/dark-manor', to: 'static_pages#dark-manor'
  get '/games/sly-cooper-thieves', to: 'static_pages#sly-cooper-thieves'
  get '/games/sly-collection', to: 'static_pages#sly-collection'
  get '/games/malgrave-incident', to: 'static_pages#malgrave-incident'
  get '/games/secret-agent-clank', to: 'static_pages#secret-agent-clank'
  get '/games/ninja-reflex', to: 'static_pages#ninja-reflex'


  get '/terms-of-use', to: 'static_pages#terms-of-use'

  resources :users

  get '/sz/account/new', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete "logout", to: "sessions#destroy"

  # resources :jobs

  # patch '/jobs' => 'jobs#update'


end
