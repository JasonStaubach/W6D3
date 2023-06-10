# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
u1 = User.create(username: "Sam")
u2 = User.create(username: "Jason")
u3 = User.create(username: "Jordan")
u4 = User.create(username: "Eli")
Artwork.create(title: "Smiley", image_url: "Smily.jpeg", artist_id: u2.id)
Artwork.create(title: "Nature Walk", image_url: "Nature_Walk.jpeg", artist_id: u1.id)
Artwork.create(title: "Mickey", image_url: "dog7805.jpeg", artist_id: u1.id)