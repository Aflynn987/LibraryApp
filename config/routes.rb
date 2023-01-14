Rails.application.routes.draw do
  root "articles#index"
  
   resources :articles do
     resources :comments
   end	
   
   get 'articles/search' => 'articles#search', as: :search_articles
   
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
