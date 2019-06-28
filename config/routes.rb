Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :vessels, only: [:index, :show, :create, :update]	
	resources :skinnies, only: [:create, :update]
end
