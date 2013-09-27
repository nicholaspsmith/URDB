URDB::Application.routes.draw do
  get "/" => 'movies#show_all', as: 'index'
  get "/:id" => 'movies#show', as: 'movie'
end
