# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.destroy_all
 Room.destroy_all
 Color.destroy_all
 Collection.destroy_all

###################user
 hortencia = User.create!(first_name:"hortencia",last_name: "Beast", email:"hortenciaB@gmail.com", password:"abc123")

################room
room = Room.create!(user_id: hortencia.id, name:"kitchen")
room = Room.create!(user_id: hortencia.id, name:"bedroom")
room = Room.create!(user_id: hortencia.id, name:"livingroom")
room = Room.create!(user_id: hortencia.id, name:"bathroom")

###############color
color = Color.create!(hex_number: "#f542ef")

##############collection
collection = Collection.create!(color_id: color.id, room_id: room.id)
