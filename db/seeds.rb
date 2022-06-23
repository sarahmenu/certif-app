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
  name: "Nantes Hotel",
  address: "10 Passage de la Poule Noire, 44000 Nantes"
)

puts " Creating Hotel 2"
hotel_2 = Hotel.create(
  name: "The Chill Place",
  address: "3 Rue de Valmy, 44000 Nantes"
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
  hotel: hotel_1
)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1655988666/triple-bed-2_jsvx3e.jpg")
room_2.photo.attach(io: file, filename: 'triple-bed-1', content_type: 'image/jpg')

puts " Creating Room 3"
room_3 = Room.create(
  price_per_night: 45,
  capacity: 2,
  hotel: hotel_2
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


puts " Creating Bookings"
booking_1 = Booking.create!(
  user: user_1,
  room: room_1,
  starts_at: DateTime.parse("01/07/2022"),
  ends_at: DateTime.parse("03/07/2022")
)
