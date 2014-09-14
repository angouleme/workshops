# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
admin = User.create!({email: 'admin@admin.com', firstname: 'Admin', lastname: 'Admin', password: 'twojastara', admin: true})

user1 = User.create!(email: 'ola@gmail.com', password: 'twojastara', admin: false)
user2 = User.create!(email: 'tomek@gmail.com', password: 'twojastara', admin: false)
user3 = User.create!(email: 'ina@gmail.com', password: 'twojastara', admin: false)
user4 = User.create!(email: 'alek@gmail.com', password: 'twojastara', admin: false)
user5 = User.create!(email: 'balbina@gmail.com', password: 'twojastara', admin: false)

Category.delete_all
Category.create!(name: 'clothes')

Product.delete_all
product1 = Product.create!(title: 't-shirt', description: 'simple and clean', price: 23, category_id: 1,  user_id: 2)
product2 = Product.create!(title: 'trousers', price: 34.00, category_id: 1, description: 'elegant', user_id: 3)
product3 = Product.create!(title: 'suit', price: 12, category_id: 1, description: 'super fancy', user_id: 3)
product4 = Product.create!(title: 'sweatshirt', price: 13, category_id: 1, description: 'very comfy', user_id: 4)
product5 = Product.create!(title: 'coat', price: 66, category_id: 1, description: 'very pretty, has a hoodie!', user_id: 5)
