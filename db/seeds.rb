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


user1 = User.new(
  email: "john@gmail.com",
  password: "abc123",
  name: "John Smith",
  bio: "Hi there! My name is John and I'm a seasoned traveler with a passion for exploring new cultures and cuisines. When I'm not on the road, you can find me cooking up a storm in my kitchen or planning my next adventure. I'm excited to connect with fellow travelers and share my tips and experiences on this app.",
  age: 25
)

file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 1"
user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save


 activity = Activity.new(
    title: "Hike to Mount Batur",
    description: "Join us for an unforgettable sunrise hike to the summit of Mount Batur in Bali. We'll be guided by a local guide who will share their knowledge of the area and culture. Experience breathtaking views of the island while enjoying a healthy breakfast at the top of the mountain.",
    location: "Canggu, Bali",
    time: DateTime.new(2023, 10, 3, 18, 0, 0),
    user_id: user1.id
)

file = URI.open("https://source.unsplash.com/random/650x430/?hike-mount-batur")
puts "Attaching photo 1"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user2 = User.new(
  email: "jane@gmail.com",
  password: "abc123",
  name: "Jane Lee",
  bio: "Hey there! I'm Jane, a travel enthusiast who loves immersing myself in different cultures and trying new foods. When I'm not on the go, I'm either reading a good book or trying out new recipes in the kitchen. Excited to meet fellow travelers and share experiences!",
  age: 30)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 2"
user2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user2.save

 activity = Activity.new(
    title: "Sushi-making workshop",
    description: "Learn the art of sushi-making from a professional chef in this hands-on workshop. You'll learn how to prepare sushi rice, make sushi rolls, and create beautiful presentations. Afterwards, enjoy a delicious sushi feast with your fellow participants!",
    location: "Tokyo, Japan",
    time: DateTime.new(2023, 5, 5, 13, 30, 0),
    user_id: user2.id
  )

file = URI.open("https://source.unsplash.com/random/650x430/?sushi")
puts "Attaching photo 2"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user3 = User.new(
  email: "david@gmail.com",
  password: "abc123",
  name: "David Kim",
  bio: "Hello! I'm David, a seasoned backpacker who loves exploring off-the-beaten-path destinations. When I'm not traveling, I'm probably hiking, surfing or planning my next adventure. Looking forward to meeting like-minded travelers on this app!",
  age: 28)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 3"
user3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save

  activity = Activity.new(
    title: "Kayaking in Halong Bay",
    description: "Explore the stunning limestone karsts and crystal-clear waters of Halong Bay on this kayaking adventure. We'll paddle through hidden lagoons and explore secluded beaches. No kayaking experience necessary!",
    location: "Halong Bay, Vietnam",
    time: DateTime.new(2023, 8, 7, 10, 15, 0),
    user_id: user3.id
  )

  file = URI.open("https://source.unsplash.com/random/650x430/?halong-bay")
puts "Attaching photo 3"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user4 = User.new(
  email: "samantha@gmail.com",
  password: "abc123",
  name: "Samantha Chen",
  bio: "Hi everyone! I'm Samantha, a foodie and culture lover who loves discovering hidden gems in every city. When I'm not traveling, I'm either trying out new recipes in the kitchen or catching up on my favorite TV shows. Can't wait to connect with fellow travelers!",
  age: 32)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 4"
user4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user4.save

  activity = Activity.new(
    title: "Cooking class in Tuscany",
    description: "Indulge your passion for food and wine with this cooking class in the heart of Tuscany. You'll learn how to make classic Italian dishes using fresh, seasonal ingredients, and enjoy a delicious meal paired with local wines.",
    location: "Tuscany, Italy",
    time: DateTime.new(2023, 6, 10, 19, 45, 0),
    user_id: user4.id
  )

  file = URI.open("https://source.unsplash.com/random/650x430/?italian-food")
puts "Attaching photo 4"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user5 = User.new(
  email: "peter@gmail.com",
  password: "abc123",
  name: "Peter Wong",
  bio: "Hello, I'm Peter, a digital nomad who loves exploring new places while working remotely. I'm passionate about sustainable tourism and making a positive impact on the destinations I visit. Looking forward to meeting other travelers and exchanging ideas!",
  age: 27)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 5"
user5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user5.save

  activity = Activity.new(
    title: "Surfing lessons in Byron Bay",
    description: "Experience the thrill of surfing with expert instructors in the beautiful beach town of Byron Bay. Whether you're a beginner or an experienced surfer, you'll improve your skills and have a blast in the waves.",
    location: "Byron Bay, Australia",
    time: DateTime.new(2023, 7, 12, 8, 0, 0),
    user_id: user5.id
  )

  file = URI.open("https://source.unsplash.com/random/650x430/?surfing")
puts "Attaching photo 5"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user6 = User.new(
  email: "elizabeth@gmail.com",
  password: "abc123",
  name: "Elizabeth Davis",
  bio: "Hey there! I'm Elizabeth, a nature lover and adventure seeker who enjoys hiking, camping, and rock climbing. I'm always up for trying something new and meeting new people along the way. Excited to connect with fellow travelers on this app!",
  age: 29)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 6"
user6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user6.save

  activity = Activity.new(
  title: "Surfing Lessons in Waikiki",
  description: "Learn to surf with a professional instructor in the world-famous Waikiki Beach in Hawaii. This activity is perfect for beginners and intermediate surfers who want to improve their skills. Enjoy the beautiful scenery and crystal-clear water while riding the waves.",
  location: "Waikiki Beach, Hawaii",
  time: DateTime.new(2023, 9, 15, 16, 30, 0),
  user_id: user6.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?surfing")
  puts "Attaching photo 6"
  activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
  activity.save

  user7 = User.new(
  email: "alex@gmail.com",
  password: "abc123",
  name: "Alex Rodriguez",
  bio: "Hi, I'm Alex, a cultural explorer who loves learning about different traditions and customs. I enjoy visiting museums, historical sites, and attending festivals. Looking forward to sharing my experiences with other travelers on this app!",
  age: 31)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 7"
user7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user7.save

  activity = Activity.new(
  title: "Street Food Tour in Bangkok",
  description: "Embark on a food adventure in Bangkok, exploring the city's vibrant street food scene. Try a variety of authentic Thai dishes from local vendors and restaurants, including pad thai, som tam, and mango sticky rice. Your guide will take you to the best spots in the city and share interesting facts about the culture and history of Thai cuisine.",
  location: "Bangkok, Thailand",
  time: DateTime.new(2023, 5, 18, 12, 0, 0),
  user_id: user7.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?thai-food")
puts "Attaching photo 7"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user8 = User.new(
  email: "lisa@gmail.com",
  password: "abc123",
  name: "Lisa Brown",
  bio: "Hello everyone! I'm Lisa, a solo traveler who loves immersing myself in new cultures and meeting locals. I enjoy trying out new foods, attending cultural events, and taking photographs. Looking forward to connecting with fellow travelers on this app!",
  age: 26)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 8"
user8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user8.save

  activity = Activity.new(
  title: "Wine Tasting in Napa Valley",
  description: "Sip some of the finest wines in the world on a tour of Napa Valley in California. This guided tour will take you to several wineries where you'll sample different types of wine and learn about the wine-making process. Take in the stunning views of the valley while enjoying a delicious lunch with your group.",
  location: "Napa Valley, California",
  time: DateTime.new(2023, 4, 20, 10, 0, 0),
  user_id: user8.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?napa-valley")
puts "Attaching photo 8"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user9 = User.new(
  email: "james@gmail.com",
  password: "abc123",
  name: "James Taylor",
  bio: "Hey, I'm James, a beach bum who loves sun, sand, and surfing. I'm always on the lookout for new surf spots and hidden beaches. When I'm not in the water, I'm usually reading a good book or hanging out with friends. Can't wait to connect with other travelers who share my love for the ocean!",
  age: 33)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 9"
user9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user9.save

  activity = Activity.new(
  title: "Cooking Class in Tuscany",
  description: "Learn to cook authentic Italian dishes in the beautiful countryside of Tuscany. This hands-on cooking class will teach you how to make pasta from scratch, as well as traditional Tuscan sauces and desserts. Enjoy a glass of local wine while admiring the stunning views of the rolling hills.",
  location: "Tuscany, Italy",
  time: DateTime.new(2023, 6, 23, 14, 45, 0),
  user_id: user9.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?tuscany")
puts "Attaching photo 9"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user10 = User.new(
  email: "lily@gmail.com",
  password: "abc123",
  name: "Lily Chen",
  bio: "Hi there! I'm Lily, a travel photographer who loves capturing the beauty of different cultures and landscapes. When I'm not on the road, I'm either editing my photos or trying out new recipes. Looking forward to connecting with fellow travelers and sharing my photos and experiences!",
  age: 28)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 10"
user10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user10.save

  activity = Activity.new(
  title: "Yoga Retreat in Bali",
  description: "Escape to paradise and unwind with a yoga retreat in Bali. This retreat includes a yoga class, guided meditation, and workshops on mindfulness and self-care. Relax in the beautiful surroundings of Bali and connect with like-minded individuals.",
  location: "Canggu, Bali",
  time: DateTime.new(2023, 7, 26, 11, 15, 0),
  user_id: user10.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?yoga")
puts "Attaching photo 10"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user11 = User.new(
  email: "michael@gmail.com",
  password: "abc123",
  name: "Michael Johnson",
  bio: "Hey, I'm Michael, a history buff who loves exploring historical landmarks and museums. I'm also a fan of trying out local cuisines and discovering hidden gems in every city. Looking forward to connecting with fellow travelers and sharing my experiences!",
  age: 35)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 11"
user11.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user11.save

  activity = Activity.new(
  title: "Safari in Serengeti National Park",
  description: "Embark on a safari adventure in the heart of Serengeti National Park in Tanzania. This tour will take you on a journey through the African wilderness where you'll see a variety of wildlife, including lions, elephants, and giraffes. Stay in luxury tents and enjoy the stunning views of the savannah.",
  location: "Tanzania, Africa",
  time: DateTime.new(2023, 10, 28, 9, 30, 0),
  user_id: user11.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?safari")
puts "Attaching photo 11"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user12 = User.new(
  email: "emily@gmail.com",
  password: "abc123",
  name: "Emily Wilson",
  bio: "Hello everyone! I'm Emily, an adrenaline junkie who loves extreme sports such as skydiving, bungee jumping, and scuba diving. I'm always up for a challenge and pushing myself to the limit. Looking forward to meeting other adventurous travelers on this app!",
  age: 30)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 12"
user12.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user12.save

  activity = Activity.new(
  title: "Snowboarding in Whistler",
  description: "Hit the slopes and ride the powder in Whistler, British Columbia. This snowboarding trip includes lessons for beginners and advanced riders, as well as access to some of the best runs in North America. Relax in the cozy ski resort and enjoy the après-ski scene with your group.",
  location: "Whistler, British Columbia",
  time: DateTime.new(2023, 5, 2, 17, 0, 0),
  user_id: user12.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?snowboarding")
puts "Attaching photo 12"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user13 = User.new(
  email: "adam@gmail.com",
  password: "abc123",
  name: "Adam Lee",
  bio: "Hi, I'm Adam, a business traveler who enjoys exploring new cities during my downtime. I'm a fan of trying out local foods and experiencing the nightlife. Looking forward to connecting with other professionals who share my love for travel!",
  age: 40)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 13"
user13.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user13.save

  activity = Activity.new(
  title: "Sunset Sailing",
  description: "Join us for a beautiful sunset sail around the island of Santorini. Experience the stunning views of the Aegean Sea and the island's caldera while enjoying some wine and snacks on board.",
  location: "Santorini, Greece",
  time: DateTime.new(2023, 11, 5, 10, 45, 0),
  user_id: user13.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?sailing")
puts "Attaching photo 13"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user14 = User.new(
  email: "sara@gmail.com",
  password: "abc123",
  name: "Sara Kim",
  bio: "Hey there! I'm Sara, a backpacker who loves immersing myself in local cultures and meeting new people. I'm always on the lookout for budget-friendly ways to travel and experience new destinations. Excited to connect with fellow backpackers and share tips and experiences!",
  age: 23)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 14"
user14.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user14.save

  activity = Activity.new(
  title: "Cooking Class",
  description: "Learn to cook some traditional Thai dishes with a local chef. We'll start with a visit to the local market to buy fresh ingredients, and then head back to the kitchen to prepare and cook the dishes together. Enjoy your delicious creations afterwards!",
  location: "Bangkok, Thailand",
  time: DateTime.new(2024, 1, 8, 15, 15, 0),
  user_id: user14.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?bangkok")
puts "Attaching photo 14"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user15 = User.new(
  email: "jason@gmail.com",
  password: "abc123",
  name: "Jason Park",
  bio: "Hello, I'm Jason, a nature lover and outdoor enthusiast who enjoys hiking, camping, and kayaking. I'm always up for an adventure and exploring new trails and waterways. Looking forward to connecting with fellow nature lovers on this app!",
  age: 26)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 15"
user15.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user15.save

  activity = Activity.new(
  title: "Rafting Adventure",
  description: "Experience the thrill of rafting down the rapids of the Ayung River in Bali. Our experienced guides will ensure your safety as you navigate the river and take in the stunning jungle scenery. Lunch will be provided after the adventure.",
  location: "Bali, Indonesia",
  time: DateTime.new(2024, 1, 11, 14, 0, 0),
  user_id: user15.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?rafting")
puts "Attaching photo 15"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save


  user16 = User.new(
  email: "tiffany@gmail.com",
  password: "abc123",
  name: "Tiffany Kim",
  bio: "Hi everyone! I'm Tiffany, a cultural enthusiast who loves learning about different traditions and customs. I enjoy attending festivals, visiting museums, and trying out local foods. Looking forward to sharing my experiences with other travelers on this app!",
  age: 28)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 16"
user16.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user16.save

  activity = Activity.new(
  title: "Wine Tasting Tour",
  description: "Join us for a tour of some of the best wineries in the Napa Valley. We'll learn about the history and process of wine making, and of course, taste some delicious wines along the way. Lunch will be provided at one of the wineries.",
  location: "Napa Valley, California",
  time: DateTime.new(2024, 1, 15, 11, 30, 0),
  user_id: user16.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?wine")
puts "Attaching photo 16"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user17 = User.new(
  email: "daniel@gmail.com",
  password: "abc123",
  name: "Daniel Lee",
  bio: "Hey, I'm Daniel, a foodie who loves trying out new restaurants and cuisines. I enjoy exploring local markets and trying out street food. Looking forward to connecting with fellow foodies and sharing recommendations on this app!",
  age: 32)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 17"
user17.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user17.save

  activity = Activity.new(
  title: "Yoga Retreat",
  description: "Escape to a beautiful yoga retreat in the mountains of Nepal. We'll practice yoga, enjoy delicious vegetarian meals, and have plenty of time to explore the surrounding nature and culture. This is the perfect opportunity to disconnect and recharge.",
  location: "Pokhara, Nepal",
  time: DateTime.new(2024, 1, 18, 9, 0, 0),
  user_id: user17.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?nepal")
puts "Attaching photo 17"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

  user18 = User.new(
  email: "jessica@gmail.com",
  password: "abc123",
  name: "Jessica Park",
  bio: "Hello! I'm Jessica, a luxury traveler who enjoys staying in high-end hotels and experiencing the finer things in life. I'm also a fan of spa treatments and fine dining. Looking forward to connecting with other luxury travelers on this app!",
  age: 35)

  file = URI.open("https://source.unsplash.com/random/250x250/?model")
puts "Attaching profile photo 18"
user18.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user18.save

  activity = Activity.new(
  title: "Scuba Diving Adventure",
  description: "Explore the stunning coral reefs of the Great Barrier Reef in Australia. Our experienced instructors will ensure your safety as you dive down to experience the incredible marine life. Lunch will be provided on board the boat.",
  location: "Great Barrier Reef, Australia",
  time: DateTime.new(2024, 1, 22, 19, 0, 0),
  user_id: user18.id)

  file = URI.open("https://source.unsplash.com/random/650x430/?scuba")
puts "Attaching photo 18"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user19 = User.new(
  email: "esmee@gmail.com",
  password: "abc123",
  name: "Esmee Denters",
  bio: "Hey there, I'm Esmee and I love exploring the world one adventure at a time. I'm always looking for new experiences and meeting new people. When I'm not out and about, I enjoy reading, cooking, and practicing yoga. Looking forward to connecting with fellow travelers and sharing some unforgettable memories!",
  age: 30
)

file = URI.open("https://source.unsplash.com/random/250x250/?yoga")
puts "Attaching profile photo 1"
user19.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user19.save

activity = Activity.new(
  title: "Sunset Cocktail Crawl",
  description: "Join me for a fun night out exploring Bali's best bars and cocktails. We'll visit some of the coolest and most scenic bars, enjoy delicious cocktails, and make new friends. Don't miss out on this amazing experience!",
  location: "Seminyak, Bali",
  time: DateTime.new(2023, 8, 12, 19, 0, 0),
  user_id: user19.id
)

file = URI.open("https://source.unsplash.com/random/650x430/?cocktail-bar-bali")
puts "Attaching photo 1"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user20 = User.new(
  email: "tom@gmail.com",
  password: "abc123",
  name: "Tom Lee",
  bio: "Hi, I'm Tom and I love staying active and exploring the outdoors. I enjoy hiking, surfing, and exploring new places. When I'm not out and about, you can find me playing guitar or hanging out with friends. Excited to meet fellow adventurers and create some unforgettable memories!",
  age: 28
)

file = URI.open("https://source.unsplash.com/random/250x250/?surfing")
puts "Attaching profile photo 1"
user20.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user20.save

activity = Activity.new(
  title: "Surfing Adventure",
  description: "Join me for an epic day of surfing at one of Bali's best spots. We'll catch some waves, enjoy the beautiful scenery, and have an unforgettable experience. Suitable for all levels, whether you're a beginner or an experienced surfer. See you there!",
  location: "Uluwatu, Bali",
  time: DateTime.new(2023, 9, 20, 9, 0, 0),
  user_id: user20.id
)

file = URI.open("https://source.unsplash.com/random/650x430/?surfing-bali")
puts "Attaching photo 1"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user21 = User.new(
  email: "lucie@gmail.com",
  password: "abc123",
  name: "Lucie Dupont",
  bio: "Bonjour! I'm Lucie, a French traveler who loves discovering new places and meeting new people. I'm always up for an adventure, whether it's hiking up a volcano or trying out the local cuisine. Let's explore Bali together!",
  age: 28
)

file = URI.open("https://source.unsplash.com/random/250x250/?traveler")
puts "Attaching profile photo 1"
user21.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user21.save

activity = Activity.new(
    title: "Artisan Jewelry Workshop",
    description: "Join us for a fun and creative afternoon making your own unique jewelry with a local artisan in Bali. Learn how to work with various materials and techniques to create a beautiful piece that you can take home with you.",
    location: "Ubud, Bali",
    time: DateTime.new(2023, 11, 10, 14, 0, 0),
    user_id: user21.id
  )

file = URI.open("https://source.unsplash.com/random/650x430/?jewelry-workshop")
puts "Attaching photo 1"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

user22 = User.new(
  email: "oliver@gmail.com",
  password: "abc123",
  name: "Oliver Schmidt",
  bio: "Hi, I'm Oliver from Germany. I'm passionate about exploring different cultures and trying new things. When I'm not traveling, you can find me playing my guitar or hanging out with friends. Let's discover Bali together!",
  age: 31
)

file = URI.open("https://source.unsplash.com/random/250x250/?adventurer")
puts "Attaching profile photo 1"
user22.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user22.save

activity = Activity.new(
    title: "Sunset Cruise in Benoa Bay",
    description: "Join us for a relaxing and romantic sunset cruise in Benoa Bay. Enjoy stunning views of the Bali coastline while sipping on cocktails and snacking on delicious appetizers. Perfect for couples or solo travelers looking to unwind and make new friends.",
    location: "Benoa, Bali",
    time: DateTime.new(2023, 9, 15, 16, 0, 0),
    user_id: user22.id
  )

file = URI.open("https://source.unsplash.com/random/650x430/?sunset-cruise")
puts "Attaching photo 1"
activity.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save

puts "Creating bookings"
50.times do
  Booking.create(
    activity: Activity.all.sample,
    user: User.all.sample
  )
end
