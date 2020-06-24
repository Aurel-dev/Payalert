# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'

User.destroy_all

User.create!(
    email: "blaba@gmail.com",            
    password: "123456"
)

User.create!(
    email: "demo@gmail.com",            
    password: "azerty"
)

User.create!(
    email: "tuttu@gmail.com",            
    password: "1234567",
    admin: true
)

puts "creating shop"
amazon = Shop.create!(
    name: "Amazon",
    user_id: User.first.id,
)


cdiscount = Shop.create!(
    name: "Cdiscount",
    user_id: User.second.id,
)
Product.create!(
    name: "Tondeuse",
    brand: "Bosch",
    price: 100,
    shop: amazon,
    category_name: "Jardin",
    sub_category_name: "Appareils electriques",
    description: "Tondeuse 200W pour jardin"
)

Product.create!(
    name: "Ponceuse",
    brand: "BLack & Decker",
    price: 50,
    shop: cdiscount,
    category_name: "Maison",
    sub_category_name: "Appareils electriques",
    description: "Ponceuse filiaire"
)



puts "creating paylert"
Paylert.create!(
    user_id: User.first.id,
    product_id: Product.first.id,
    bidding_price: 90
)

Paylert.create!(
    user_id: User.second.id,
    product_id: Product.first.id,
    bidding_price: 30
)

