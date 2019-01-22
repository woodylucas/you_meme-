Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: %i[show]
  resources :memes, only: %i[index]
  resources :likes, only: %i[]
end
