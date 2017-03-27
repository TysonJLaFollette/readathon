Rails.application.routes.draw do
  
  resources :bookitems
  resources :users
  resources :users2books
  

  root 'welcome#index'
  get "app/views/welcome/masterview", to: "welcome#masterview", as: "masterview"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
