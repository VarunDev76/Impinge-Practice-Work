Rails.application.routes.draw do
   	get 'public_activity/recipe/new'
   	post 'public_activity/recipe/new'
   	
   	get 'public_activity/recipe/show'
   	post 'public_activity/recipe/show'
   	
   	get 'public_activity/recipe/index'
   	post 'public_activity/recipe/index'
   	
   	get 'public_activity/recipe/destroy'
   	post 'public_activity/recipe/destroy'

	root 'recipe#index'
	resources :activities
	resources :recipe do
		resources :comments
	end
	devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
