class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy
  CATEGORIES = ["Jardin", "Maison", "Garage", "Loisirs et détente"]
  BRANDS = ["Bosch", "Black & Decker", "Inesis", "Pfeiffer.inc", "Willi Waller", "Wilson"]

  after_update_commit  :check_price_paylerts

  private

  def check_price_paylerts
    puts "================================================================="
      puts previous_changes
    puts "================================================================="
      puts self
    puts "================================================================="
      paylert = Paylert.where(product_id: self.id).where("bidding_price >= ?", self.price).first
    # puts "================================================================="
    #   puts Paylert.where(product_id: self.id).first.bidding_price
    #   puts Paylert.where(product_id: self.id).second.bidding_price
    puts "================================================================="
    # puts Paylert.where(product_id: self.id).length
    # puts "==============================================================="
    if paylert
      paylert.status = "Executée !"
      paylert.save
      UserMailer.with(paylert: @paylert, user: current_user).execution.deliver_now
    end
  end
end


