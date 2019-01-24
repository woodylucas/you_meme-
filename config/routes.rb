Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: %i[show new create]
  resources :memes, only: %i[index new show create edit update]
	delete '/memes/:id', to: 'memes#destroy'
  resources :likes, only: %i[]



#----------------Authentication routes----------------------------------------#
  get '/', to: 'sessions#new', as: "login"
  post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
