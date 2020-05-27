Restaurant.destroy_all
10.times do
  r = Restaurant.create!(name: Faker::Hipster.word,
                         address: Faker::Address.street_address,
                         category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
                         phone_number: Faker::Number.leading_zero_number(digits: 10))
  rand(1..5).times do
    Review.create!(content: Faker::TvShows::RickAndMorty.quote,
                   rating: rand(0..5),
                   restaurant_id: r.id )
  end
end
