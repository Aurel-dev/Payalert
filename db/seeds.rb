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

amazon = Shop.create!(
    name: "Amazon",
    user_id: User.first.id,
)


cdiscount = Shop.create!(
    name: "Cdiscount",
    user_id: User.second.id,
)

boulanger = Shop.create!(
    name: "Boulanger",
    user_id: User.third.id,
)

decathlon = Shop.create!(
    name: "Decathlon",
    user_id: User.third.id,
)



Product.create!(
    name: "Computer",
    brand: "Lenovo",
    price: 599,
    shop: boulanger,
    category_name: "Maison",
    sub_category_name: "Electro-ménager",
    photo: "computer.png",
    description: "Ordinateur Gamer a petit prix"
)

Product.create!(
    name: "Iphone X",
    brand: "Apple",
    price: 799,
    shop: boulanger,
    category_name: "Maison",
    sub_category_name: "Electro-ménager",
    photo: "iphone.png",
    description: "Iphone X a prix réduit"
)
Product.create!(
    name: "Cafetierre",
    brand: "Jura",
    price: 299,
    shop: boulanger,
    category_name: "Maison",
    sub_category_name: "Electro-ménager",
    photo: "cafee.png",
    description: "Cafetiere moderne "
)

Paylert.create!(
    user_id: User.first.id,
    product_id: Product.first.id,
    bidding_price: 90,
    status: "En attente d'execution"
)

Paylert.create!(
    user_id: User.second.id,
    product_id: Product.first.id,
    bidding_price: 30,
    status: "En attente d'execution"
)

