MoviesApp::Application.routes.draw do

  # Routes for the Theater resource:
  # CREATE
  get '/theaters/new', controller: 'theaters', action: 'new'
  post "/theaters", controller: 'theaters', action: 'create'

  # READ
  get '/theaters', controller: 'theaters', action: 'index'
  get '/theaters/:id', controller: 'theaters', action: 'show'

  # UPDATE
  get '/theaters/:id/edit', controller: 'theaters', action: 'edit'
  put '/theaters/:id', controller: 'theaters', action: 'update'

  # DELETE
  delete '/theaters/:id', controller: 'theaters', action: 'destroy'
  #------------------------------

# Routes for the Movie resource:
root :to => "movies#index"

 get '/movies/new', controller: 'movies', action: 'new'
 post "/movies", controller: 'movies', action: 'create'
 get "/movies", controller: 'movies', action: 'index'
 get '/movies/:id', controller: 'movies', action: 'show'
 get "/movies/:id/edit", controller: 'movies', action: 'edit'
 put '/movies/:id', controller: 'movies', action: 'update'
 delete '/movies/:id', controller: 'movies', action: 'destroy'

end
