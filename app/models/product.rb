class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy
<<<<<<< HEAD
=======
<<<<<<< HEAD

  CATEGORIES = ["Jardin", "Maison", "Garage"]
  BRANDS = ["Bosch", "Black & Decker", "Willi Waller"]
=======
  
  CATEGORIES = ["Jardin", "Maison", "Garage"]
  BRANDS = ["Bosch", "Black & Decker", "Willi Waller"]
>>>>>>> 7a5ad8bd60ea6c02f31758a98c05125563a5dcbc

  # l'action doit se faire après l'update du prix du produit dans l'admin (OK)
  after_update_commit  :check_price_paylerts 

  # puis suite au update, vérifier les paylerts en cours sur le produit en question (OK)

  # puis leur prix
    # product.paylerts.price
  # puis une paylert doit s'activer (msg pour le moment avec paylert concernée) lorsque prix vendeur <= prix client
    # if paylerts.product.price >= user.product.price
  private

  def check_price_paylerts
    puts "================================================================="
    puts previous_changes
    puts "================================================================="
    puts self
    puts "================================================================="
    paylert = Paylert.where(product_id: self.id).where("bidding_price >= ?", self.price).first
    puts "================================================================="
    puts Paylert.where(product_id: self.id).first.bidding_price
    puts Paylert.where(product_id: self.id).second.bidding_price
    puts "================================================================="
    # puts Paylert.where(product_id: self.id).length
    # puts "==============================================================="
    if paylert
      paylert.status = "executed"
      paylert.save
    end
  end
<<<<<<< HEAD
=======
>>>>>>> 1b0f5b4bd0c85725ebd3517a794a9aa2af5d0fb4
>>>>>>> 7a5ad8bd60ea6c02f31758a98c05125563a5dcbc
end
