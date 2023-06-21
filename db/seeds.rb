puts "seed starting"

puts "user is creating ..."

User.destroy_all

brigitte = User.create!(firstname: 'Brigitte', lastname: 'Santa', email: 'brigitte@gmail.com', password: 'qwertz', admin: true)
User.create!(firstname: 'Alex', lastname: 'Artus', email: 'alex@gmail.com', password: 'qwertz', admin: true)

puts "user created"

puts "room is creating ..."

Room.destroy_all

room = Room.create!(name: 'Room n°1', description: 'Très belle chambre au bord du lac avec lit double et petit déjeuner compris dans le prix', price: 40, user: brigitte)
room_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/chambre_1.jpeg"))
room.image.attach(io: URI.open(room_image['secure_url']), filename: "chambre_1.jpeg", content_type: "image/jpeg")

room = Room.create!(name: 'Room n°2', description: 'Très belle chambre au bord du lac avec lit double et petit déjeuner compris dans le prix', price: 40, user: brigitte)
room_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/chambre_2.jpeg"))
room.image.attach(io: URI.open(room_image['secure_url']), filename: "chambre_2.jpeg", content_type: "image/jpeg")

room = Room.create!(name: 'Room n°3', description: 'Très belle chambre au bord du lac avec lit double et petit déjeuner compris dans le prix', price: 40, user: brigitte)
room_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/chambre_3.jpeg"))
room.image.attach(io: URI.open(room_image['secure_url']), filename: "chambre_3.jpeg", content_type: "image/jpeg")

room = Room.create!(name: 'Room n°4', description: 'Très belle chambre au bord du lac avec lit double et petit déjeuner compris dans le prix', price: 40, user: brigitte)
room_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/chambre_4.jpeg"))
room.image.attach(io: URI.open(room_image['secure_url']), filename: "chambre_4.jpeg", content_type: "image/jpeg")

puts "rooms created"
puts "end of seed"
