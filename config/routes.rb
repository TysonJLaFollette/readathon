Rails.application.routes.draw do
  
  get 'leaderboard/index'

  resources :bookitems
  resources :users
  resources :users2books
  resources :dualbooklists
  

  root 'welcome#index'
  get "app/views/welcome/masterview", to: "welcome#masterview", as: "masterview"
  get "app/views/welcome/contact", to: "welcome#contact", as: "contact"
  get "app/views/welcome/careers", to: "welcome#careers", as: "careers"
  get "app/views/welcome/about", to: "welcome#about", as: "about"

  get "app/views/welcome/displayview", to: "welcome#displayview", as: "displayview"
  get "app/views/welcome/infoview", to: "welcome#infoview", as: "infoview"

  get "app/views/welcome/classsummary", to: "welcome#classsummary", as: "classsummary"

  get "app/views/welcome/matching", to:"welcome#matching", as: "matching"
  post "app/views/welcome/displayscores", to:"welcome#displayscores", as: "displayscores"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
