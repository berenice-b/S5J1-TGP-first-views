Rails.application.routes.draw do

resources :gossips
resources :cities

root 'gossips#index'

get '/team', to: 'thegossipcontroller#team'
get '/contact', to: 'thegossipcontroller#contact'

get 'author/:id', to: 'thegossipcontroller#author_page'



end
