class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy
  CATEGORIES = ["Jardin", "Maison", "Garage", "Loisirs et détente"]
  BRANDS = ["Bosch", "Black & Decker", "Pfeiffer.inc", "Willi Waller"]

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
    # puts Paylert.where(product_id: self.id).first.bidding_price
    # puts Paylert.where(product_id: self.id).second.bidding_price
    # puts "================================================================="
    # puts Paylert.where(product_id: self.id).length
    # puts "==============================================================="
    if paylert
      user = paylert.user
      if (user.stripe_customer_id && user.credit_card_id)
        intent = Stripe::PaymentIntent.create({
        amount: paylert.product.price,
        currency: 'eur',
        customer: user.stripe_customer_id,
        payment_method: user.credit_card_id,
        off_session: true,
        confirm: true,
      })
      paylert.status = "executed"
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
      end
    end
  end
end

