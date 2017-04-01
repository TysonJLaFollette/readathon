Rails.application.routes.draw do
  
  get 'leaderboard/index'

  resources :bookitems
  resources :users
  resources :users2books
  

  root 'welcome#index'
  get "app/views/welcome/masterview", to: "welcome#masterview", as: "masterview"
  get "app/views/welcome/contact", to: "welcome#contact", as: "contact"
  get "app/views/welcome/careers", to: "welcome#careers", as: "careers"
  get "app/views/welcome/about", to: "welcome#about", as: "about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
