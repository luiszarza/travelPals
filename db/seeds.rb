# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create!(
  email: "john@gmail.com",
  password: "abc123",
  name: "John Smith",
  bio: "Hi there! My name is John and I'm a seasoned traveler with a passion for exploring new cultures and cuisines. When I'm not on the road, you can find me cooking up a storm in my kitchen or planning my next adventure. I'm excited to connect with fellow travelers and share my tips and experiences on this app.",
  age: 25 )

activity = Activity.create!(
    title: "Hike to Mount Batur",
    description: "Join us for an unforgettable sunrise hike to the summit of Mount Batur in Bali. We'll be guided by a local guide who will share their knowledge of the area and culture. Experience breathtaking views of the island while enjoying a healthy breakfast at the top of the mountain.",
    location: "Bali",
    date: 2023-05-15,
    participants_number: 12,
    user_id: user1.id)

file = URI.open("https://source.unsplash.com/random/430x650/?hike-mount-batur")
puts "Attaching photo 1 of ##{i}"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user2 = User.create!(
  email: "jane@gmail.com",
  password: "abc123",
  name: "Jane Lee",
  bio: "Hey there! I'm Jane, a travel enthusiast who loves immersing myself in different cultures and trying new foods. When I'm not on the go, I'm either reading a good book or trying out new recipes in the kitchen. Excited to meet fellow travelers and share experiences!",
  age: 30)

activity = Activity.create!(
    title: "Sushi-making workshop",
    description: "Learn the art of sushi-making from a professional chef in this hands-on workshop. You'll learn how to prepare sushi rice, make sushi rolls, and create beautiful presentations. Afterwards, enjoy a delicious sushi feast with your fellow participants!",
    location: "Tokyo",
    date: "2023-05-20",
    participants_number: 8,
    user_id: user2.id
  )

file = URI.open("https://source.unsplash.com/random/430x650/?sushi")
puts "Attaching photo 1 of ##{i}"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save
