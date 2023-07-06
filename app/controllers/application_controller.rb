class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Movie Routes
  
  get "/movies" do
    movies = Movie.all
    movies.to_json(include: :reviews)
  end

  get '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.to_json(include: :reviews)
  end

  # Review Routes

  get '/reviews' do 
    reviews = Review.all
    reviews.to_json
  end

  post '/reviews' do
    review = Review.create(
      score: params[:score],
      comment: params[:comment],
      movie_id: params[:movie_id]
    )
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    if review
      review.update(
        score: params[:score],
        comment: params[:comment]
      )
      review.to_json
    else
      status 404
      { error: "Review not found" }.to_json
    end
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
end
