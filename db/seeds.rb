puts "Seeding Users..."

50.times do 
    User.create!(
        first_name: Faker::Name.unique.first_name,
        last_name: Faker::Name.unique.last_name,
        email: Faker::Internet.unique.email,
        handle: Faker::FunnyName.name
    )
end

puts "Seeding Restaurants"

100.times do
    Restaurant.create!(
        name: Faker::Name.unique.name,
        address: Faker::Address.street_address,
        image: Faker::LoremFlickr.image(size: "750x750", search_terms: ['restaurants', 'food'], match_all: true),
        style: Faker::Restaurant.type
    )
end

puts "Seeding Reviews"

200.times do 
    Review.create!(
        score: Faker::Number.between(from: 1, to: 10),
        comments: Faker::JapaneseMedia::StudioGhibli.quote,
        likes: rand(1..50),
        restaurant_id: rand(1..100),
        user_id: rand(1..50)
    )
end

puts "Done Seeding!"