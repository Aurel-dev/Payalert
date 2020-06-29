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

User.create!(
    email: "narcleet@gmail.com",            
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
    name: "Tondeuse Thermique FLYMO",
    brand: "Bosch",
    price: 150,
    shop: amazon,
    category_name: "Jardin",
    sub_category_name: "Tondeuse",
    photo: "Tondeuse.svg",
    description: "Tondeuse sur coussin d'air ultra légère pour une maniabilité optimale."
)

Product.create!(
    name: "Tondeuse filaire BEM351",
    brand: "Black & Decker",
    price: 89,
    shop: amazon,
    category_name: "Jardin",
    sub_category_name: "Tondeuse",
    photo: "Tondeuse2.svg",
    description: "3 hauteurs de coupe ajustables par essieux avant et arrière : 20, 40 et 60mm."
)


Product.create!(
    name: "Tondeuse à gazon sans fil Bosch - AdvancedRotak",
    brand: "Bosch",
    price: 399,
    shop: amazon,
    category_name: "Jardin",
    sub_category_name: "Tondeuse",
    photo: "Tondeuse3.svg",
    description: "Tonte silencieuse : travail de jardin agréable avec la tondeuse électrique grâce à une réduction du bruit jusqu'à 30 % et une acoustique équilibrée grâce à la technologie ProSilence."
)


Product.create!(
    name: "Tondeuse robot intelligente Bosch - Indego 350",
    brand: "Bosch",
    price: 888.99,
    shop: boulanger,
    category_name: "Jardin",
    sub_category_name: "Tondeuse",
    photo: "Tondeuse4.svg",
    description: "Efficace et compacte : Permet de tondre jusqu’à trois aires de pelouse différentes d’une superficie totale de maximum 350 m² grâce à la fonction MultiArea."
)


Product.create!(
    name: "Tondeuse Thermique FLYMO",
    brand: "Bosch",
    price: 140,
    shop: boulanger,
    category_name: "Jardin",
    sub_category_name: "Tondeuse",
    photo: "Tondeuse.svg",
    description: "Tondeuse sur coussin d'air ultra légère pour une maniabilité optimale."
)


Product.create!(
    name: "Ponceuse rotative TACKLIFE",
    brand: "Black & Decker",
    price: 50,
    shop: cdiscount,
    category_name: "Garage",
    sub_category_name: "Bricolage",
    photo: "Ponceuse.svg",
    description: "Cette ponceuse excentrique est conçue pour être raccordée facilement et directement à un aspirateur ou un boîtier microfiltre."
)

Product.create!(
    name: "Réfrigérateur combiné Bosch KGV58VL31S",
    brand: "Bosch",
    price: 399,
    shop: boulanger,
    category_name: "Maison",
    sub_category_name: "Electro-ménager",
    photo: "Frigo.svg",
    description: "Composé d'une partie réfrigérateur qui peut conserver les fruits et légumes frais plus longtemps et d'une partie congélateur."
)

Product.create!(
    name: "Willi Waller Two Thousand Six",
    brand: "Willi Waller",
    price: 29.99,
    shop: cdiscount,
    category_name: "Maison",
    sub_category_name: "Electro-ménager",
    photo: "Willywaller.svg",
    description: "Avec le Willi Waller Two Thousand Six là, ça va pas te prendre trois fois moins de temps à éplucher des patates...
    Ni quat' fois moins de temps à éplucher des patates...
    Non ! Avec le Willi Waller Two Thousand Six là, ça va te prendre DEUX fois moins de temps pour éplucher des patates."
)

Product.create!(
    name: "Clubs de golf Limited edition",
    brand: "Pfeiffer.inc",
    price: 4569,
    shop: decathlon,
    category_name: "Loisirs et détente",
    sub_category_name: "Détente",
    photo: "Clubs.svg",
    description: "PFEIFFER Golf propose du matériel de golf d'une qualité exceptionnelle, s'adressant aux joueurs de tous niveaux.
    L'usine Pfeiffer Golf située à Genève, a atteinte une renommée internationale, faisant l'objet d'une minutie de fabrication dans la plus pure tradition de l'horlogerie Suisse."
)


Product.create!(
    name: "Kit de Golf 7 Clubs Adulte ",
    brand: "Inesis",
    price: 170,
    shop: decathlon,
    category_name: "Loisirs et détente",
    sub_category_name: "Détente",
    photo: "Club2.svg",
    description: "Le kit de golf idéal ! Vous pourrez couvrir toutes les distances du départ jusqu'au green. 7 clubs pour APPRENDRE et PROGRESSER !"
)


Product.create!(
    name: "Wilson Ensemble Complet pour Débutant, 10 Clubs de Golf ",
    brand: "Wilson",
    price: 275,
    shop: amazon,
    category_name: "Loisirs et détente",
    sub_category_name: "Détente",
    photo: "Club3.svg",
    description: "Ensemble complet de golf Wilson de 10 clubs de golf pour homme (main droite) avec sac trépied, idéal pour les débutants et joueurs occasionnels d'une taille de 167 à 186 cm, bois en titane/acier, fers en acier inoxydable 17-4 avec manches 100% graphite."
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

