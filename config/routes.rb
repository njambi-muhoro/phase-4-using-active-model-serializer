Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/movies/:id/summary', to: 'movies#summary' #Explicitly Specifying a Serializer
  get '/movie_summaries', to: 'movies#summaries' #Explicitly Specifying a Serializer
end