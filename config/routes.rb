Rails.application.routes.draw do
root to: "home#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tweets/index' => 'tweets#index'

  get 'tweets/new' => 'tweets#new'

  post 'tweets/new' => 'tweets#create'
end
