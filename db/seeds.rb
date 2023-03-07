# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning up database..."
Booking.destroy_all
Activity.destroy_all
User.destroy_all
puts "Database cleaned"


user1 = User.create!(
  email: "john@gmail.com",
  password: "abc123",
  name: "John Smith",
  bio: "Hi there! My name is John and I'm a seasoned traveler with a passion for exploring new cultures and cuisines. When I'm not on the road, you can find me cooking up a storm in my kitchen or planning my next adventure. I'm excited to connect with fellow travelers and share my tips and experiences on this app.",
  age: 25
)
file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching user photo 1"
user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save

file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 1"
user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save

activity = Activity.create!(
    title: "Hike to Mount Batur",
    description: "Join us for an unforgettable sunrise hike to the summit of Mount Batur in Bali. We'll be guided by a local guide who will share their knowledge of the area and culture. Experience breathtaking views of the island while enjoying a healthy breakfast at the top of the mountain.",
    location: "Bali",
    date: Date.new(2023,6,12),
    user_id: user1.id
)

file = URI.open("https://source.unsplash.com/random/430x650/?hike-mount-batur")
puts "Attaching photo 1"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user2 = User.create!(
  email: "jane@gmail.com",
  password: "abc123",
  name: "Jane Lee",
  bio: "Hey there! I'm Jane, a travel enthusiast who loves immersing myself in different cultures and trying new foods. When I'm not on the go, I'm either reading a good book or trying out new recipes in the kitchen. Excited to meet fellow travelers and share experiences!",
  age: 30)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 2"
user2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user2.save

activity = Activity.create!(
    title: "Sushi-making workshop",
    description: "Learn the art of sushi-making from a professional chef in this hands-on workshop. You'll learn how to prepare sushi rice, make sushi rolls, and create beautiful presentations. Afterwards, enjoy a delicious sushi feast with your fellow participants!",
    location: "Tokyo",
    date: Date.new(2023,9,18),
    user_id: user2.id
  )

file = URI.open("https://source.unsplash.com/random/430x650/?sushi")
puts "Attaching photo 2"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user3 = User.create!(
  email: "david@gmail.com",
  password: "abc123",
  name: "David Kim",
  bio: "Hello! I'm David, a seasoned backpacker who loves exploring off-the-beaten-path destinations. When I'm not traveling, I'm probably hiking, surfing or planning my next adventure. Looking forward to meeting like-minded travelers on this app!",
  age: 28)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 3"
user3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save

  activity = Activity.create!(
    title: "Kayaking in Halong Bay",
    description: "Explore the stunning limestone karsts and crystal-clear waters of Halong Bay on this kayaking adventure. We'll paddle through hidden lagoons and explore secluded beaches. No kayaking experience necessary!",
    location: "Halong Bay",
    date: Date.new(2023,5,25),
    user_id: user3.id
  )

  file = URI.open("https://source.unsplash.com/random/430x650/?halong-bay")
puts "Attaching photo 3"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user4 = User.create!(
  email: "samantha@gmail.com",
  password: "abc123",
  name: "Samantha Chen",
  bio: "Hi everyone! I'm Samantha, a foodie and culture lover who loves discovering hidden gems in every city. When I'm not traveling, I'm either trying out new recipes in the kitchen or catching up on my favorite TV shows. Can't wait to connect with fellow travelers!",
  age: 32)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 4"
user4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user4.save

  activity = Activity.create!(
    title: "Cooking class in Tuscany",
    description: "Indulge your passion for food and wine with this cooking class in the heart of Tuscany. You'll learn how to make classic Italian dishes using fresh, seasonal ingredients, and enjoy a delicious meal paired with local wines.",
    location: "Tuscany",
    date: Date.new(2023,12,3),
    user_id: user4.id
  )

  file = URI.open("https://source.unsplash.com/random/430x650/?italian-food")
puts "Attaching photo 4"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user5 = User.create!(
  email: "peter@gmail.com",
  password: "abc123",
  name: "Peter Wong",
  bio: "Hello, I'm Peter, a digital nomad who loves exploring new places while working remotely. I'm passionate about sustainable tourism and making a positive impact on the destinations I visit. Looking forward to meeting other travelers and exchanging ideas!",
  age: 27)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 5"
user5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user5.save

  activity = Activity.create!(
    title: "Surfing lessons in Byron Bay",
    description: "Experience the thrill of surfing with expert instructors in the beautiful beach town of Byron Bay. Whether you're a beginner or an experienced surfer, you'll improve your skills and have a blast in the waves.",
    location: "Byron Bay",
    date: Date.new(2023,6,3),
    user_id: user5.id
  )

  file = URI.open("https://source.unsplash.com/random/430x650/?surfing")
puts "Attaching photo 5"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user6 = User.create!(
  email: "elizabeth@gmail.com",
  password: "abc123",
  name: "Elizabeth Davis",
  bio: "Hey there! I'm Elizabeth, a nature lover and adventure seeker who enjoys hiking, camping, and rock climbing. I'm always up for trying something new and meeting new people along the way. Excited to connect with fellow travelers on this app!",
  age: 29)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 6"
user6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user6.save

  activity = Activity.create!(
  title: "Surfing Lessons in Waikiki",
  description: "Learn to surf with a professional instructor in the world-famous Waikiki Beach in Hawaii. This activity is perfect for beginners and intermediate surfers who want to improve their skills. Enjoy the beautiful scenery and crystal-clear water while riding the waves.",
  location: "Waikiki Beach, Hawaii",
  date: Date.new(2023,4,29),
  user_id: user6.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?surfing")
  puts "Attaching photo 6"
  activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
  activity.save

  user7 = User.create!(
  email: "alex@gmail.com",
  password: "abc123",
  name: "Alex Rodriguez",
  bio: "Hi, I'm Alex, a cultural explorer who loves learning about different traditions and customs. I enjoy visiting museums, historical sites, and attending festivals. Looking forward to sharing my experiences with other travelers on this app!",
  age: 31)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 7"
user7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user7.save

  activity = Activity.create!(
  title: "Street Food Tour in Bangkok",
  description: "Embark on a food adventure in Bangkok, exploring the city's vibrant street food scene. Try a variety of authentic Thai dishes from local vendors and restaurants, including pad thai, som tam, and mango sticky rice. Your guide will take you to the best spots in the city and share interesting facts about the culture and history of Thai cuisine.",
  location: "Bangkok, Thailand",
  date: Date.new(2023,6,3),
  user_id: user7.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?thai-food")
puts "Attaching photo 7"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user8 = User.create!(
  email: "lisa@gmail.com",
  password: "abc123",
  name: "Lisa Brown",
  bio: "Hello everyone! I'm Lisa, a solo traveler who loves immersing myself in new cultures and meeting locals. I enjoy trying out new foods, attending cultural events, and taking photographs. Looking forward to connecting with fellow travelers on this app!",
  age: 26)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 8"
user8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user8.save

  activity = Activity.create!(
  title: "Wine Tasting in Napa Valley",
  description: "Sip some of the finest wines in the world on a tour of Napa Valley in California. This guided tour will take you to several wineries where you'll sample different types of wine and learn about the wine-making process. Take in the stunning views of the valley while enjoying a delicious lunch with your group.",
  location: "Napa Valley, California",
  date: Date.new(2023,8,2),
  user_id: user8.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?napa-valley")
puts "Attaching photo 8"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user9 = User.create!(
  email: "james@gmail.com",
  password: "abc123",
  name: "James Taylor",
  bio: "Hey, I'm James, a beach bum who loves sun, sand, and surfing. I'm always on the lookout for new surf spots and hidden beaches. When I'm not in the water, I'm usually reading a good book or hanging out with friends. Can't wait to connect with other travelers who share my love for the ocean!",
  age: 33)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 9"
user9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user9.save

  activity = Activity.create!(
  title: "Cooking Class in Tuscany",
  description: "Learn to cook authentic Italian dishes in the beautiful countryside of Tuscany. This hands-on cooking class will teach you how to make pasta from scratch, as well as traditional Tuscan sauces and desserts. Enjoy a glass of local wine while admiring the stunning views of the rolling hills.",
  location: "Tuscany, Italy",
  date: Date.new(2023,11,3),
  user_id: user9.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?tuscany")
puts "Attaching photo 9"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user10 = User.create!(
  email: "lily@gmail.com",
  password: "abc123",
  name: "Lily Chen",
  bio: "Hi there! I'm Lily, a travel photographer who loves capturing the beauty of different cultures and landscapes. When I'm not on the road, I'm either editing my photos or trying out new recipes. Looking forward to connecting with fellow travelers and sharing my photos and experiences!",
  age: 28)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 10"
user10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user10.save

  activity = Activity.create!(
  title: "Yoga Retreat in Bali",
  description: "Escape to paradise and unwind with a yoga retreat in Bali. This retreat includes a yoga class, guided meditation, and workshops on mindfulness and self-care. Relax in the beautiful surroundings of Bali and connect with like-minded individuals.",
  location: "Bali, Indonesia",
  date: Date.new(2023,9,15),
  user_id: user10.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?yoga")
puts "Attaching photo 10"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user11 = User.create!(
  email: "michael@gmail.com",
  password: "abc123",
  name: "Michael Johnson",
  bio: "Hey, I'm Michael, a history buff who loves exploring historical landmarks and museums. I'm also a fan of trying out local cuisines and discovering hidden gems in every city. Looking forward to connecting with fellow travelers and sharing my experiences!",
  age: 35)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 11"
user11.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user11.save

  activity = Activity.create!(
  title: "Safari in Serengeti National Park",
  description: "Embark on a safari adventure in the heart of Serengeti National Park in Tanzania. This tour will take you on a journey through the African wilderness where you'll see a variety of wildlife, including lions, elephants, and giraffes. Stay in luxury tents and enjoy the stunning views of the savannah.",
  location: "Serengeti National Park, Tanzania",
  date: Date.new(2023,5,22),
  user_id: user11.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?safari")
puts "Attaching photo 11"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user12 = User.create!(
  email: "emily@gmail.com",
  password: "abc123",
  name: "Emily Wilson",
  bio: "Hello everyone! I'm Emily, an adrenaline junkie who loves extreme sports such as skydiving, bungee jumping, and scuba diving. I'm always up for a challenge and pushing myself to the limit. Looking forward to meeting other adventurous travelers on this app!",
  age: 30)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 12"
user12.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user12.save

  activity = Activity.create!(
  title: "Snowboarding in Whistler",
  description: "Hit the slopes and ride the powder in Whistler, British Columbia. This snowboarding trip includes lessons for beginners and advanced riders, as well as access to some of the best runs in North America. Relax in the cozy ski resort and enjoy the après-ski scene with your group.",
  location: "Whistler, British Columbia",
  date: Date.new(2023,12,8),
  user_id: user12.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?snowboarding")
puts "Attaching photo 12"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user13 = User.create!(
  email: "adam@gmail.com",
  password: "abc123",
  name: "Adam Lee",
  bio: "Hi, I'm Adam, a business traveler who enjoys exploring new cities during my downtime. I'm a fan of trying out local foods and experiencing the nightlife. Looking forward to connecting with other professionals who share my love for travel!",
  age: 40)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 13"
user13.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user13.save

  activity = Activity.create!(
  title: "Sunset Sailing",
  description: "Join us for a beautiful sunset sail around the island of Santorini. Experience the stunning views of the Aegean Sea and the island's caldera while enjoying some wine and snacks on board.",
  location: "Santorini, Greece",
  date: Date.new(2023,11,1),
  user_id: user13.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?sailing")
puts "Attaching photo 13"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user14 = User.create!(
  email: "sara@gmail.com",
  password: "abc123",
  name: "Sara Kim",
  bio: "Hey there! I'm Sara, a backpacker who loves immersing myself in local cultures and meeting new people. I'm always on the lookout for budget-friendly ways to travel and experience new destinations. Excited to connect with fellow backpackers and share tips and experiences!",
  age: 23)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 14"
user14.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user14.save

  activity = Activity.create!(
  title: "Cooking Class",
  description: "Learn to cook some traditional Thai dishes with a local chef. We'll start with a visit to the local market to buy fresh ingredients, and then head back to the kitchen to prepare and cook the dishes together. Enjoy your delicious creations afterwards!",
  location: "Bangkok, Thailand",
  date: Date.new(2023,10,25),
  user_id: user14.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?bangkok")
puts "Attaching photo 14"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user15 = User.create!(
  email: "jason@gmail.com",
  password: "abc123",
  name: "Jason Park",
  bio: "Hello, I'm Jason, a nature lover and outdoor enthusiast who enjoys hiking, camping, and kayaking. I'm always up for an adventure and exploring new trails and waterways. Looking forward to connecting with fellow nature lovers on this app!",
  age: 26)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 15"
user15.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user15.save

  activity = Activity.create!(
  title: "Rafting Adventure",
  description: "Experience the thrill of rafting down the rapids of the Ayung River in Bali. Our experienced guides will ensure your safety as you navigate the river and take in the stunning jungle scenery. Lunch will be provided after the adventure.",
  location: "Bali, Indonesia",
  date: Date.new(2023,10,3),
  user_id: user15.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?rafting")
puts "Attaching photo 15"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user16 = User.create!(
  email: "tiffany@gmail.com",
  password: "abc123",
  name: "Tiffany Kim",
  bio: "Hi everyone! I'm Tiffany, a cultural enthusiast who loves learning about different traditions and customs. I enjoy attending festivals, visiting museums, and trying out local foods. Looking forward to sharing my experiences with other travelers on this app!",
  age: 28)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 16"
user16.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user16.save

  activity = Activity.create!(
  title: "Wine Tasting Tour",
  description: "Join us for a tour of some of the best wineries in the Napa Valley. We'll learn about the history and process of wine making, and of course, taste some delicious wines along the way. Lunch will be provided at one of the wineries.",
  location: "Napa Valley, USA",
  date: Date.new(2023,9,9),
  user_id: user16.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?wine")
puts "Attaching photo 16"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user17 = User.create!(
  email: "daniel@gmail.com",
  password: "abc123",
  name: "Daniel Lee",
  bio: "Hey, I'm Daniel, a foodie who loves trying out new restaurants and cuisines. I enjoy exploring local markets and trying out street food. Looking forward to connecting with fellow foodies and sharing recommendations on this app!",
  age: 32)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 17"
user17.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user17.save

  activity = Activity.create!(
  title: "Yoga Retreat",
  description: "Escape to a beautiful yoga retreat in the mountains of Nepal. We'll practice yoga, enjoy delicious vegetarian meals, and have plenty of time to explore the surrounding nature and culture. This is the perfect opportunity to disconnect and recharge.",
  location: "Pokhara, Nepal",
  date: Date.new(2023,10,18),
  user_id: user17.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?nepal")
puts "Attaching photo 17"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user18 = User.create!(
  email: "jessica@gmail.com",
  password: "abc123",
  name: "Jessica Park",
  bio: "Hello! I'm Jessica, a luxury traveler who enjoys staying in high-end hotels and experiencing the finer things in life. I'm also a fan of spa treatments and fine dining. Looking forward to connecting with other luxury travelers on this app!",
  age: 35)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 18"
user18.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user18.save

  activity = Activity.create!(
  title: "Scuba Diving Adventure",
  description: "Explore the stunning coral reefs of the Great Barrier Reef in Australia. Our experienced instructors will ensure your safety as you dive down to experience the incredible marine life. Lunch will be provided on board the boat.",
  location: "Great Barrier Reef, Australia",
  date: Date.new(2023,5,12),
  user_id: user18.id)

  file = URI.open("https://source.unsplash.com/random/430x650/?scuba")
puts "Attaching photo 18"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save
