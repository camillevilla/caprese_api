Rails.application.routes.draw do
  # API versioning to be implemented later
  # namespace :api do
  #   namespace :v1 do
  #     resources :pomodoros
  #   end
  # end

  mount_devise_token_auth_for 'User', at: 'auth'

  resources :pomodoros
  resources :tags
  resources :pomodoro_tags
end
