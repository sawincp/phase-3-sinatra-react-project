require "faker"

puts "🌱 Seeding..."

10.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    genre: Faker::Book.genre

  )

  rand(1..5).times do
    Review.create(
      score: rand(1..10),
      comment: Faker::Lorem.sentence,
      movie_id: movie.id
    )
  end
end


puts "✅ Done seeding!"
