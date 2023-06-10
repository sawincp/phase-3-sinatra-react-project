require "faker"

puts "🌱 Seeding..."

10.times do
    # create a game with random data
    movie = Movie.create(
      title: Faker::Movie.title,
      genre: Faker::Movie.genre,
    )

    rand(1..5).times do
        Review.create(
          score: rand(1..10),
          comment: Faker::Lorem.sentence,
          movie_id: movie.id # use the ID (primary key) of the game as the foreign key
        )
      end
    end


puts "✅ Done seeding!"
