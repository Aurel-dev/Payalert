class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy

  CATEGORIES = ["Jardin", "Maison", "Garage"]
  BRANDS = ["Bosch", "Black & Decker", "Willi Waller"]
end
