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
    password: "1234567"
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

)
Product.create!(
    name: "Tondeuse Thermique FLYMO",
    brand: "Bosch",
    price: 150,
    shop: amazon,
    category_name: "Jardin",
    sub_category_name: "Tondeuse",
    description: "Tondeuse sur coussin d'air ultra légère pour une maniabilité optimale."
)

Product.create!(
    name: "Ponceuse rotative TACKLIFE",
    brand: "Black & Decker",
    price: 50,
    shop: cdiscount,
    category_name: "Garage",
    sub_category_name: "Bricolage",
    description: "Cette ponceuse excentrique est conçue pour être raccordée facilement et directement à un aspirateur ou un boîtier microfiltre."
)

Product.create!(
    name: "Réfrigérateur combiné Bosch KGV58VL31S",
    brand: "Bosch",
    price: 399,
    shop: boulanger,
    category_name: "Maison",
    sub_category_name: "Electro-ménager",
    description: "Composé d'une partie réfrigérateur qui peut conserver les fruits et légumes frais plus longtemps et d'une partie congélateur."
)

Product.create!(
    name: "Willi Waller Two Thousand Six",
    brand: "Willi Waller",
    price: 29.99,
    shop: cidscount,
    category_name: "Maison",
    sub_category_name: "Electro-ménager",
    description: "Avec le Willi Waller Two Thousand Six là, ça va pas te prendre trois fois moins de temps à éplucher des patates...
    Ni quat' fois moins de temps à éplucher des patates...
    Non ! Avec le Willi Waller Two Thousand Six là, ça va te prendre DEUX fois moins de temps pour éplucher des patates."
)


Paylert.create!(
    user_id: User.first.id,
    product_id: Product.first.id,
    bidding_price: 90
    status: "pending"
)

Paylert.create!(
    user_id: User.second.id,
    product_id: Product.first.id,
    bidding_price: 30
    status: "pending"
)

