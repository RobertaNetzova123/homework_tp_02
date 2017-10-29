Rails.application.routes.draw do
	get 'messages/new'
	resources :messages
	root 'messages#new'
		
end
