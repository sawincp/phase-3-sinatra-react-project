class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/movies" do
    movies = Movie.all
    movies.to_json(include: :reviews)
    # movies.to_json
  end

  get '/movies/:id' do
    movie = Movie.find_by(id: param[:id])
    if movie
      movie.to_json(include: :reviews)
    else
      "404 - Movie not Found"
    end
  end


end
