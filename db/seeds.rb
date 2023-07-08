puts "seed starting"

puts "user is creating ..."

User.destroy_all

user = User.create!(firstname: 'Brigitte', lastname: 'Santa', email: 'brigitte@gmail.com', password: 'qwertz', admin: true)
user_photo = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/avatar.jpeg"))
user.photo.attach(io: URI.open(user_photo['url']), filename: "avatar.jpeg", content_type: "image/jpeg")


user_2 = User.create!(firstname: 'Alex', lastname: 'Artus', email: 'alex@gmail.com', password: 'qwertz')
user_photo_2 = Cloudinary::Uploader.upload((Rails.root.join"app/assets/images/avatar.jpeg"))
user_2.photo.attach(io: URI.open(user_photo_2['url']), filename: "avatar.jpeg", content_type: "image/jpeg")


puts "user created"

puts "room is creating ..."

Room.destroy_all

room = Room.create!(name: 'Stanza del ritorno', description: 'Très belle chambre au bord du lac avec lit double et petit déjeuner compris dans le prix', price: 40, user: user)
room_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/Stanza del ritorno.jpeg"))
room.image.attach(io: URI.open(room_image['secure_url']), filename: "Stanza del ritorno.jpeg", content_type: "image/jpeg")

room = Room.create!(name: 'Stanza della Signora', description: 'Très belle chambre au bord du lac avec lit double et petit déjeuner compris dans le prix', price: 40, user: user)
room_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/Stanza della Signora.jpeg"))
room.image.attach(io: URI.open(room_image['secure_url']), filename: "Stanza della Signora.jpeg", content_type: "image/jpeg")

room = Room.create!(name: 'Stanza del Rossàl', description: 'Très belle chambre au bord du lac avec lit double et petit déjeuner compris dans le prix', price: 40, user: user)
room_image = Cloudinary::Uploader.upload(Rails.root.join("app/assets/images/Stanza del Rossàl.jpeg"))
room.image.attach(io: URI.open(room_image['secure_url']), filename: "Stanza del Rossàl.jpeg", content_type: "image/jpeg")

puts "rooms created"
puts "end of seed"
