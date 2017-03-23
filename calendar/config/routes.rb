Rails.application.routes.draw do
  # get 'homes/index'

  # get 'homes/new'

  # get 'homes/show'

  # get 'homes/edit'

  resources :homes
  root "homes#new"

  get 'homes/events'
  post '/events' => "homes#events"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
