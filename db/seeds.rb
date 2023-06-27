require "faker"

puts "🌱 Seeding..."

movie1 = Movie.create(
    title: "INCEPTION",
    genre: "Action/Sci-fi"
)
movie1.reviews.create(
    score: 8,
    comment: "Inception engaged on a mainly intellectually level, but that isn't to say that film didn't pack an emotional impact.",
    movie_id: movie1.id
)

movie1.reviews.create(
    score: 9,
    comment: "Awesome doesn't even begin to describe the sleek, clever, mind-blowing madness that is director Christopher Nolan's aptly titled psychological (read: trippy) thriller Inception.",
    movie_id: movie1.id
)

movie2 = Movie.create(
    title: "THE BOURNE ULTIMATUM",
    genre: "Action/Mystery/Thriller"
)
movie2.reviews.create(
    score: 10,
    comment: "Greengrass knows how to shoot action. There is a hand-to-hand combat scene in Morocco that is as exciting, chaotic and violent as any sequence in the Bourne movies, I just wish he had spent more time on the moments between the mayhem.",
    movie_id: movie2.id
)

movie2.reviews.create(
    score: 9,
    comment: "The third Bourne instalment is not just the best of the franchise, but also one of the finest and most forceful action releases of the past decade.",
    movie_id: movie2.id
)

movie2.reviews.create(
    score: 10,
    comment: "Not only far and away this summer's best three-peat, it's a pulse-pounding peak to Matt Damon's spy trilogy.",
    movie_id: movie2.id
)

movie3 = Movie.create(
    title: "STAR WARS: THE FORCE AWAKENS",
    genre: "Sci-fi/Adventure"
)

movie3.reviews.create(
    score: 8,
    comment: "It's both nostalgic and fresh, a tender homage to, especially, the initial Star Wars (Episode IV: A New Hope), as well as a bridge to help those of us stuck in the splendor of Hoth edge into the future.",
    movie_id: movie3.id
)

movie4 = Movie.create(
    title: "THE LORD OF THE RINGS: THE FELLOWSHIP OF THE RING", 
    genre: "Fantasy/Adventure"
)

movie4.reviews.create(
    score: 9,
    comment: "An enthusiastic visionary set loose on one of the biggest playgrounds ever constructed, Jackson brings more personality to the series' first installment, The Fellowship Of The Ring, than typically seeps into a franchise of this magnitude.",
    movie_id: movie4.id
)

movie4.reviews.create(
    score: 9,
    comment: "An enthusiastic visionary set loose on one of the biggest playgrounds ever constructed, Jackson brings more personality to the series' first installment, The Fellowship Of The Ring, than typically seeps into a franchise of this magnitude.",
    movie_id: movie4.id
)

movie5 = Movie.create(
    title: "HALLOWEEN", 
    genre: "Holiday/Horror"
)

movie5.reviews.create(
    score: 7,
    comment: "Carpenter's 1978 slasher classic has inspired a million imitations as well as sequels, but few that demonstrate so clearly that a disreputable genre movie can also be a pure, rigorous work of art.",
    movie_id: movie5.id
)

movie5.reviews.create(
    score: 4,
    comment: "After a promising opening, Halloween becomes just another maniac-on-the-loose suspenser.",
    movie_id: movie5.id
)

movie5.reviews.create(
    score: 6,
    comment: "Since there is precious little character or plot development to pass the time between stalking sequences, one tends to wish the killer would get on with it.",
    movie_id: movie5.id
)


puts "✅ Done seeding!"
