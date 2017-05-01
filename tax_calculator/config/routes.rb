Rails.application.routes.draw do
	
  get 'tax_slabs/index'

  get 'tax_slabs/show'

  get 'tax_slabs/new'

  get 'tax_slabs/edit'

  get 'tax_slabs/destroy'

  get 'tax_slab/index'

  get 'tax_slab/show'

  get 'tax_slab/new'

  get 'tax_slab/edit'

  get 'tax_slab/destroy'

	get '/calculate_tax', to: 'homes#calculate_tax'
	post '/calculate_tax', to: 'homes#calculate_tax'
	root 'homes#index'
	resources :homes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
