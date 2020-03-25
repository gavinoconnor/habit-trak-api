Rails.application.routes.draw do
  # namespace
  resources :users
  resources :habits
  resources :user_habits

end
