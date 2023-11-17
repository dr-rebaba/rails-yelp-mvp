Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

 # List all restaurants
 get '/restaurants', to: 'restaurants#index'

 # Show details of a specific restaurant
 get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'

 # Create a new restaurant (show the form)
 get '/restaurants/new', to: 'restaurants#new', as: 'new_restaurant'

 # Save the new restaurant (create action)
 post '/restaurants', to: 'restaurants#create'

 # Add a new review to a specific restaurant (show the form)
 get '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_review'

 # Save the new review for a specific restaurant (create action)
 post '/restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
