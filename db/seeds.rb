# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
##TEST USERS

us1 = User.create(username: "Dan",password:'1234')
us2= User.create(username: "Eli",password:'1111')
us3 = User.create(username: "Jack",password:'2222')
us4 = User.create(username: Faker::Name.name, password:'3333')
us5 = User.create(username: Faker::Name.name, password:'4444')
post2 = Post.create(user: us2, content: Faker::Quote.famous_last_words)
post1 = Post.create(user: us5, content: Faker::Quote.famous_last_words)
post3 = Post.create(user: us4, content: Faker::Quote.famous_last_words)