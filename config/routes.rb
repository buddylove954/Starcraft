Rails.application.routes.draw do
  get '/matches' => 'matches#index'
  get '/profile/:name' => 'players#profile'

  namespace :api do
    get '/matches' => 'matches#wins'
  end
end
