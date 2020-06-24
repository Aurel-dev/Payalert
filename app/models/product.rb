class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy
  
  CATEGORIES = ["Jardin", "Maison", "Garage"]
  BRANDS = ["Bosch", "Black & Decker", "Willi Waller"]

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
end
