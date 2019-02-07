Rails.application.routes.draw do

resources :gossips
resources :cities
resources :users
resources :comments
resources :sessions, only:[:new, :create, :destroy]

root 'gossips#index'
get '/profile', to: 'gossips#profile'

get '/team', to: 'application#team'
get '/contact', to: 'application#contact'



end
