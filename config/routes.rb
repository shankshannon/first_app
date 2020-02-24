Rails.application.routes.draw do
  devise_for :users
#  root "topics#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  get 'about' => 'topics#about'
#  resources :topics do
#	member do
#		post 'upvote'
#		delete 'downvote'
#	end
#  end
   resources :groups do
   	member do
   		post :join
   		post :quit
   	end

   	resources :posts
   end

   namespace :account do
   	resources :groups
   end
#   root "welcome#index"
   root 'groups#index'
end
