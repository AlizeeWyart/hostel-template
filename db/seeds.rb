# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hostel1 = Hostel.new()
hostel1.name = "Riverside Bali Resort"
hostel1.short_description = "Discover Serenity"
hostel1.address = "1 Wellington Street, 8877 Bali, Ginyahar, Indonesia"
hostel1.description = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur"
hostel1.email = "alizee@bloomers.fr"
hostel1.phone_number = "+98 326 336 8201"
hostel1.save

room1 = Room.new()
room1.hostel = hostel1
room1.name = "Infinity Pool Villa"
room1.description = "Discover the fantastic refreshing relaxation of one of our Superior Villas. Located directly at the cliffs of the houndang valley shore nested in the beautiful nature greenery of the island. Direct access to the included private infinity pool and beach. A spacious living room as a basement of your personal relaxation during your stay"
room1.amenities = "Our locations are fully equipped to fit your needs and guarantee full relacation during your stay. Our Multmedia System are up to date and you can enjoy complementary WiFi in your location and the hotel area"
room1.shown = true
room1.low_season_week_price = 50.5
room1.low_season_wkd_price = 100.5
room1.hot_season_week_price = 150.5
room1.hot_season_wkd_price = 200.5
room1.save

room2 = Room.new()
room2.hostel = hostel1
room2.name = "Presidential Villa"
room2.description = "Discover the fantastic refreshing relaxation of one of our Superior Villas. Located directly at the cliffs of the houndang valley shore nested in the beautiful nature greenery of the island. Direct access to the included private infinity pool and beach. A spacious living room as a basement of your personal relaxation during your stay"
room2.amenities = "Our locations are fully equipped to fit your needs and guarantee full relacation during your stay. Our Multmedia System are up to date and you can enjoy complementary WiFi in your location and the hotel area"
room2.shown = true
room2.low_season_week_price = 150.6
room2.low_season_wkd_price = 200.6
room2.hot_season_week_price = 250.6
room2.hot_season_wkd_price = 300.6
room2.save

article1 = Article.new()
article1.date = Date.today
article1.short_description = "Bali is the most beautiful place of Indonesia and receeals lot of delicious suprises"
article1.description = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem..."
article1.title = "Explore Bali in Picture"
article1.user_id = 1
article1.save

article2 = Article.new()
article2.date = Date.today
article2.short_description = "Discover the powerful history of Bali, which is not only an chill island"
article2.description = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem..."
article2.title = "Shades of the old Bali"
article2.user_id = 1
article2.save


