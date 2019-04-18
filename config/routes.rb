Rails.application.routes.draw do
  get '/podcasts', to: 'podcasts#index', as: 'podcasts'
  post '/podcasts', to: 'podcasts#create'
  get '/podcasts/new', to: 'podcasts#new', as: 'new_podcast'
  get '/podcasts/:id', to: 'podcasts#show', as: 'podcast'
  puts '/podcasts/:id', to: 'podcasts#update'
  patch '/podcasts/:id', to: 'podcasts#update'
  get '/podcasts/:id/edit', to: 'podcasts#edit', as: 'edit_podcast'
  delete '/podcasts/:id', to: 'podcasts#delete'

  post '/podcasts/:id/episodes', to: 'episodes#create', as: 'create_episode'

  root to: 'podcasts#index'

end
