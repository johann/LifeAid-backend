Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #
  #   end
  # end
  post 'user_token' => 'user_token#create'
  post 'users' => 'users#create'
  get 'hello', to: 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
