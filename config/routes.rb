Rails.application.routes.draw do
  # API versioning to be implemented later
  # namespace :api do
  #   namespace :v1 do
  #     resources :pomodoros
  #   end
  # end

  resources :pomodoros
end
