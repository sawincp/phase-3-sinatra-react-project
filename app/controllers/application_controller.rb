class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Movie Routes
  
  get "/movies" do
    movies = Movie.all.includes(:reviews)
    movies.to_json(include: :reviews)
  end


  # Review Routes

  post '/reviews' do
    movie = Movie.find(params[:movie_id])
    review = movie.reviews.create(
      score: params[:score],
      comment: params[:comment]
    )
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find_by(id: params[:id])
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
  end
end
