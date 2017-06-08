Rails.application.routes.draw do

  devise_for :users
  resources :accounts
  root 'accounts#new'
  namespace :api do
  	post '/accounts/create' => 'accounts#create'
  	post '/accounts/update' => 'accounts#update'
  	delete '/accounts/destroy' => 'accounts#destroy'
  	# get '/accounts/update' => 'accounts#update'
  	# post '/logout' => 'users#logout'
  	# get '/user/logout' => 'users#logout'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
