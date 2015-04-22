Rails.application.routes.draw do
  get '/matches' => 'matches#index'
  get '/profile/:name' => 'players#profile'

  namespace :api do
    get '/matches' => 'matches#wins'
    get '/matches/:faction' => 'matches#factions'
    get '/player/:player_id' =>'player#show'
    get '/player/:player_id/:faction' => 'player#show'
  end
end
