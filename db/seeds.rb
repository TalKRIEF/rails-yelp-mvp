
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "ON VA TOUT CASSER"
Restaurant.destroy_all

puts "Allez on génère des nouveaux trucs"
puts ".................................."

5.times do |resto|
  Restaurant.create(
    name: Faker::Game.title,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORY.sample
  )
  puts "successfully created #{resto.name}"
end
