Rails.application.routes.draw do
  resources :npcs
  get 'characters/show'

  post 'characters/create'

  get 'characters/new'

  get 'characters/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :characters

  root 'characters#index'
end
