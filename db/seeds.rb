# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "Cleaning DB"

Booking.destroy_all
User.destroy_all
Room.destroy_all
Hotel.destroy_all

puts " Creating User"
user_1 = User.create(
  email: 'sarah@gmail.com',
  password: "123456"
)

puts " Creating Hotels"

puts " Creating Hotel 1"
hotel_1 = Hotel.create(
  name: "Cocoon",
  address: "10 Passage de la Poule Noire, 44000 Nantes"
)

puts " Creating Hotel 2"
hotel_2 = Hotel.create(
  name: "The Chill Place",
  address: "3 Rue de Valmy, 75000 Paris"
)

puts " Creating Hotel 3"
hotel_3 = Hotel.create(
  name: "St George Hotel",
  address: "4 Rue du Couëdic, 06000 Nice"
)

puts " Creating Hotel 4"
hotel_4 = Hotel.create(
  name: "Sunset Lodge",
  address: "36 Bd Charles Livon, 13000 Marseille"
)

puts " Creating Hotel 5"
hotel_5 = Hotel.create(
  name: "Lake Place Inn",
  address: "Av. Jean Gabriel Domergue, 33300 Bordeaux"
)

puts " Creating Hotel 6"
hotel_6 = Hotel.create(
  name: "Budget Suites",
  address: "3 Rue Paul Montrochet, 69002 Lyon"
)

puts " Creating Rooms"
puts " Creating Room 1"
room_1 = Room.create(
  price_per_night: 50,
  capacity: 2,
  hotel: hotel_1
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1655988674/double-bed-2_khid5o.jpg")
room_1.photo.attach(io: file, filename: 'double-bed-1', content_type: 'image/jpg')

puts " Creating Room 2"
room_2 = Room.create(
  price_per_night: 80,
  capacity: 3,
  hotel: hotel_2
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1655988666/triple-bed-2_jsvx3e.jpg")
room_2.photo.attach(io: file, filename: 'triple-bed-1', content_type: 'image/jpg')

puts " Creating Room 3"
room_3 = Room.create(
  price_per_night: 45,
  capacity: 2,
  hotel: hotel_3
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1655988671/double-bed-1_ju2ypj.jpg")
room_3.photo.attach(io: file, filename: 'double-bed-2', content_type: 'image/jpg')


puts " Creating Room 4"
room_4 = Room.create(
  price_per_night: 75,
  capacity: 3,
  hotel: hotel_2
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1655988663/triple-bed-1_rqgjxn.jpg")
room_4.photo.attach(io: file, filename: 'triple-bed-2', content_type: 'image/jpg')

puts " Creating Room 5"
room_5 = Room.create(
  price_per_night: 35,
  capacity: 2,
  hotel: hotel_4
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1656055822/Bedroom_425_Standard_Double_alsvh0.jpg")
room_5.photo.attach(io: file, filename: 'double-bed-3', content_type: 'image/jpg')

puts " Creating Room 6"
room_6 = Room.create(
  price_per_night: 65,
  capacity: 3,
  hotel: hotel_4
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1656055701/triple-bed-4_t7on0m.jpg")
room_6.photo.attach(io: file, filename: 'triple-bed-3', content_type: 'image/jpg')


puts " Creating Room 7"
room_5 = Room.create(
  price_per_night: 85,
  capacity: 2,
  hotel: hotel_5
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1656055865/double-bed-3_fnxplp.jpg")
room_5.photo.attach(io: file, filename: 'double-bed-4', content_type: 'image/jpg')

puts " Creating Room 8"
room_6 = Room.create(
  price_per_night: 95,
  capacity: 3,
  hotel: hotel_6
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1656055697/triple-bed-3_c8bwnk.jpg")
room_6.photo.attach(io: file, filename: 'triple-bed-4', content_type: 'image/jpg')



