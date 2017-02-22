Rails.application.routes.draw do
  # API versioning to be implemented later
  # namespace :api do
  #   namespace :v1 do
  #     resources :pomodoros
  #   end
  # end

  get '/auth/:provider/callback' => 'devise_token_auth/sessions#create'

  delete '/signout' => 'devise_token_auth/sessions#destroy', :as => :signout

  post '/signin' => 'devise_token_auth/sessions#new', :as => :signin

  mount_devise_token_auth_for 'User', at: 'auth'

  resources :pomodoros
  resources :tags
  resources :pomodoro_tags
end
