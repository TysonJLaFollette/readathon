Rails.application.routes.draw do
  
  get 'leaderboard/index'

  resources :bookitems
  resources :users

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
