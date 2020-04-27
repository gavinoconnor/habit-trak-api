Rails.application.routes.draw do
  # namespace

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  get 'users/:id', to: 'users#show', as: 'user'

  resources :users
  resources :habits
  resources :user_habits

end
