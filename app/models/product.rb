class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy
  CATEGORIES = ["Jardin", "Maison", "Garage"]
  BRANDS = ["Bosch", "Black & Decker", "Willi Waller"]

  after_update_commit  :check_price_paylerts 

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
