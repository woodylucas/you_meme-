Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: %i[show]
  resources :memes, only: %i[index new show create edit]
  resources :likes, only: %i[]
end
