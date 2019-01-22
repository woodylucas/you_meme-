# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meme.destroy_all
Like.destroy_all
User.destroy_all

u1 = User.create(username: "donald", password: "pass123", bio: "I am Donald Trump, the greatest ever.")

m1 = Meme.create(title: "The Most Interesting Man", caption: "Stay thirsty my friends", user_id: u1.id)

Like.create(user_id: u1.id, meme_id: m1.id)
