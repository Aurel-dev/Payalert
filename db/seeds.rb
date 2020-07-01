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


User.create!(
    email: "Fan.de.FX@gmail.com",            
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


# Product.create!(
#     name: "Tondeuse Thermique Rotak 43",
#     brand: "Bosch",
#     price: 150,
#     shop: amazon,
#     category_name: "Jardin",
#     sub_category_name: "Tondeuse",
#     photo: "Tondeuse.svg",
#     description: "Tondeuse sur coussin d'air ultra légère pour une maniabilité optimale."
# )

# Product.create!(
#     name: "Tondeuse filaire BEM351",
#     brand: "Black & Decker",
#     price: 89,
#     shop: amazon,
#     category_name: "Jardin",
#     sub_category_name: "Tondeuse",
#     photo: "Tondeuse2.svg",
#     description: "3 hauteurs de coupe ajustables par essieux avant et arrière : 20, 40 et 60mm."
# )



# Product.create!(
#     name: "Tondeuse robot intelligente Bosch - Indego 350",
#     brand: "Bosch",
#     price: 888.99,
#     shop: boulanger,
#     category_name: "Jardin",
#     sub_category_name: "Tondeuse",
#     photo: "Tondeuse4.svg",
#     description: "Efficace et compacte : Permet de tondre jusqu’à trois aires de pelouse différentes d’une superficie totale de maximum 350 m² grâce à la fonction MultiArea."
# )


# Product.create!(
#     name: "Tondeuse Thermique Rotak 43",
#     brand: "Bosch",
#     price: 140,
#     shop: boulanger,
#     category_name: "Jardin",
#     sub_category_name: "Tondeuse",
#     photo: "Tondeuse.svg",
#     description: "Tondeuse sur coussin d'air ultra légère pour une maniabilité optimale."
# )


Product.create!(
    name: "Bonsaï Suisse 25 ans",
    brand: "Pfeiffer.inc",
    price: 65,
    shop: boulanger,
    category_name: "Jardin",
    sub_category_name: "Plantes",
    photo: "Bonsai.png",
    description: "Demande un entretien très particulier et minutieux."
)



Product.create!(
    name: "Couteau pour jardin",
    brand: "Willi Waller",
    price: 15,
    shop: boulanger,
    category_name: "Jardin",
    sub_category_name: "Couteau",
    photo: "Couteau.png",
    description: "Couteau de jardin polyvalent, idéal pour désherber, creuser, élager, transplanter."
)


# Product.create!(
#     name: "Ponceuse rotative TACKLIFE",
#     brand: "Black & Decker",
#     price: 50,
#     shop: cdiscount,
#     category_name: "Garage",
#     sub_category_name: "Bricolage",
#     photo: "Ponceuse.svg",
#     description: "Cette ponceuse excentrique est conçue pour être raccordée facilement et directement à un aspirateur ou un boîtier microfiltre."
# )


# Product.create!(
#     name: "Clubs de golf Limited edition",
#     brand: "Pfeiffer.inc",
#     price: 4569,
#     shop: decathlon,
#     category_name: "Loisirs",
#     sub_category_name: "Détente",
#     photo: "Clubs.svg",
#     description: "PFEIFFER Golf propose du matériel de golf d'une qualité exceptionnelle, s'adressant aux joueurs de tous niveaux.
#     L'usine Pfeiffer Golf située à Genève, a atteinte une renommée internationale, faisant l'objet d'une minutie de fabrication dans la plus pure tradition de l'horlogerie Suisse."
# )


# Product.create!(
#     name: "Kit de Golf 7 clubs adulte ",
#     brand: "Inesis",
#     price: 170,
#     shop: decathlon,
#     category_name: "Loisirs",
#     sub_category_name: "Détente",
#     photo: "clubdegolf.png",
#     description: "Le kit de golf idéal pour APPRENDRE et PROGRESSER !"
# )

# Product.create!(
#     name: "Wilson Ensemble Complet pour Débutant, 10 Clubs de Golf ",
#     brand: "Wilson",
#     price: 275,
#     shop: amazon,
#     category_name: "Loisirs",
#     sub_category_name: "Détente",
#     photo: "Club3.svg",
#     description: "Ensemble complet de golf Wilson de 10 clubs de golf pour homme (main droite) avec sac trépied, idéal pour les débutants et joueurs occasionnels d'une taille de 167 à 186 cm, bois en titane/acier, fers en acier inoxydable 17-4 avec manches 100% graphite."
# )

Product.create!(
    name: "Raquette Pure Drive",
    brand: "Wilson",
    price: 115,
    shop: amazon,
    category_name: "Loisirs",
    sub_category_name: "Détente",
    photo: "Raquette.png",
    description: "LA raquette reconnue pour sa parfaite combinaison entre contrôle et puissance."
)


Product.create!(
    name: "Sabre Laser Vader",
    brand: "Apple",
    price: 1999,
    shop: cdiscount,
    category_name: "Loisirs",
    sub_category_name: "Détente",
    photo: "sabre.png",
    description: "Pour votre prochain festival Cosplay"
)

Product.create!(
    name: "Sac à dos 30L",
    brand: "Nike",
    price: 49,
    shop: decathlon,
    category_name: "Loisirs",
    sub_category_name: "Détente",
    photo: "backpack.png",
    description: "Avec des bretelles réglables et des compartiments"
)

Product.create!(
    name: "Planche de surf Adulte",
    brand: "Nike",
    price: 275,
    shop: decathlon,
    category_name: "Loisirs",
    sub_category_name: "Détente",
    photo: "Surboard.png",
    description: "Planche stable ,shape facile d’accès. Shortboard tolérant avec un Volume de 38 L."
)


Product.create!(
    name: " Drone Ryze Tello ",
    brand: "Apple",
    price: 100,
    shop: amazon,
    category_name: "Loisirs",
    sub_category_name: "Détente",
    photo: "Drone.png",
    description: " Mode Rebond - Enregistrement vidéo automatique - Compatible casque VR et smartphone."
)


Product.create!(
    name: "Converse bleu ciel",
    brand: "Converse",
    price: 45,
    shop: amazon,
    category_name: "Textiles",
    sub_category_name: "Détente",
    photo: "Converse.png",
    description: "Disponibles tailles 39 a 46"
)


Product.create!(
    name: "Casquette de Golf",
    brand: "Inesis",
    price: 35,
    shop: amazon,
    category_name: "Textiles",
    sub_category_name: "Détente",
    photo: "baseball-cap.png",
    description: "Permet une gestion de la transpiration et possède une fermeture reglable sur l'arrière"
)


Product.create!(
    name: "Converse noir",
    brand: "Converse",
    price: 45,
    shop: amazon,
    category_name: "Textiles",
    sub_category_name: "Détente",
    photo: "Blackconverse.png",
    description: "Le kit de golf idéal pour APPRENDRE et PROGRESSER !"
)


Product.create!(
    name: "Casquette dédicacée YP",
    brand: "Pfeiffer.inc",
    price: 350,
    shop: decathlon,
    category_name: "Textiles",
    sub_category_name: "Détente",
    photo: "Cap.png",
    description: "Cette casquette est dédicacée par Yann Pfeiffer himself."
)


Product.create!(
    name: "Lunettes Vintage homme",
    brand: "Pfeiffer.inc",
    price: 520,
    shop: amazon,
    category_name: "Textiles",
    sub_category_name: "Détente",
    photo: "Sunglasses.png",
    description: "Leur forme arrondie et leur couleur noire très tendances."
)



Product.create!(

    name: "Cafetiere Ena 8",
    brand: "Jura",
    price: 299,
    shop: boulanger,
    category_name: "Electro-ménager",
    sub_category_name: "Electro-ménager",
    photo: "cafetiere.png",
    description: "La nouvelle machine à café automatique 1 tasse."
)


Product.create!(
    name: "Shaker",
    brand: "Jura",
    price: 20,
    shop: boulanger,
    category_name: "Electro-ménager",
    sub_category_name: "Electro-ménager",
    photo: "Shaker.png",
    description: "Simple and easy to use this shaker is recommended for beginner’s and experienced bartender."
)

Product.create!(
    name: "PC Portable Legion Y520 ",
    brand: "Lenovo",
    price: 599,
    shop: boulanger,
    category_name: "Electronique",
    sub_category_name: "Détente",
    photo: "computer.png",
    description: "Un portable 15 pouces essentiellement pensé pour le jeu."
)

Product.create!(
    name: "Iphone 11 - 64 Go",
    brand: "Apple",
    price: 799,
    shop: boulanger,
    category_name: "Electronique",
    sub_category_name: "Détente",
    photo: "iphone.png",
    description: "Ecran Retina HD avec technologie IPS Taille de la diagonale"
)

Product.create!(
    name: "Pc Portable Asus FX 570",
    brand: "Asus",
    price: 899,
    shop: cdiscount,
    category_name: "Electronique",
    sub_category_name: "Détente",
    photo: "AsusPortable.png",
    description: "Conçus pour un monde de divertissements avec une incroyable réactivité."
)

Product.create!(
    name: " TV Toshiba 40L2863DG",
    brand: "Toshiba",
    price: 1899,
    shop: cdiscount,
    category_name: "Electronique",
    sub_category_name: "Détente",
    photo: "Toshiba 40L.png",
    description: "Conçus pour un monde de divertissements avec une incroyable réactivité."
)

Product.create!(
    name: " TV Toshiba 43L3763",
    brand: "Toshiba",
    price: 2299,
    shop: cdiscount,
    category_name: "Electronique",
    sub_category_name: "Détente",
    photo: "Toshiba 43L.png",
    description: "Conçus pour un monde de divertissements avec une incroyable réactivité."
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

