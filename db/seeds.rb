puts "Seeding Users..."

50.times do 
    User.create!(
        first_name: Faker::Name.unique.first_name,
        last_name: Faker::Name.unique.last_name,
        email: Faker::Internet.unique.email,
        password: "password",
        handle: Faker::FunnyName.name
    )
end

puts "Seeding Restaurants"

100.times do
    Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        image: Faker::LoremFlickr.unique.image(size: "750x750", search_terms: ['restaurants', 'food'], match_all: true),
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

# puts "Updating Passwords"

# User.find(1).update(password: '1')
#   User.find(2).update(password: '2')
#   User.find(3).update(password: '3')
#   User.find(4).update(password: '4')
#   User.find(5).update(password: '5')
#   User.find(6).update(password: '6')
#   User.find(7).update(password: '7')
#   User.find(8).update(password: '8')
#   User.find(9).update(password: '9')
#   User.find(10).update(password: '10')
#   User.find(11).update(password: '11')
#   User.find(12).update(password: '12')
#   User.find(13).update(password: '13')
#   User.find(14).update(password: '14')
#   User.find(15).update(password: '15')
#   User.find(16).update(password: '16')
#   User.find(17).update(password: '17')
#   User.find(18).update(password: '18')
#   User.find(19).update(password: '19')
#   User.find(20).update(password: '20')
#   User.find(21).update(password: '21')
#   User.find(22).update(password: '22')
#   User.find(23).update(password: '23')
#   User.find(24).update(password: '24')
#   User.find(25).update(password: '25')
#   User.find(26).update(password: '26')
#   User.find(27).update(password: '27')
#   User.find(28).update(password: '28')
#   User.find(29).update(password: '29')
#   User.find(30).update(password: '30')
#   User.find(31).update(password: '31')
#   User.find(32).update(password: '32')
#   User.find(33).update(password: '33')
#   User.find(34).update(password: '34')
#   User.find(35).update(password: '35')
#   User.find(36).update(password: '36')
#   User.find(37).update(password: '37')
#   User.find(38).update(password: '38')
#   User.find(39).update(password: '39')
#   User.find(40).update(password: '40')
#   User.find(41).update(password: '41')
#   User.find(42).update(password: '42')
#   User.find(43).update(password: '43')
#   User.find(44).update(password: '44')
#   User.find(45).update(password: '45')
#   User.find(46).update(password: '46')
#   User.find(47).update(password: '47')
#   User.find(48).update(password: '48')
#   User.find(49).update(password: '49')
#   User.find(50).update(password: '50')
puts "Done Seeding!"