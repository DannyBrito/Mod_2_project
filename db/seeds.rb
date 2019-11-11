# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
##TEST USERS

us1 = User.create(username: "Dan")
us2= User.create(username: "Eli")
us3 = User.create(username: "Jack")
us4 = User.create(username: "Ont")
us5 = User.create(username: "Pr")