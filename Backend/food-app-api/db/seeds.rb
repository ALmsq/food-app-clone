# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


deli = Restaurant.create(name: 'deli', price: 1, rating: 3, categories: 'deli')
alex = User.create(name: 'alex', restaurant: deli, rating: false)

Order.create(user_id: 1, restaurant_id: 1)