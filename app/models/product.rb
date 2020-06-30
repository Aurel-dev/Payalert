class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy
  monetize :price_cents
  CATEGORIES = ["Jardin", "Maison", "Garage", "Loisirs et détente", "Vetements" ]
  BRANDS = ["Apple", "Bosch", "Black & Decker", "Inesis", "Lenovo", "Pfeiffer.inc", "Willi Waller", "Wilson","Converse","acer","Jura"]

  after_update_commit  :check_price_paylerts

  private

  def check_price_paylerts
    paylert = Paylert.where(product_id: self.id).where("bidding_price >= ?", self.price_cents).first
    if paylert
      user = paylert.user
      if (user.stripe_customer_id && user.credit_card_id)
        intent = Stripe::PaymentIntent.create({
        amount: paylert.product.price_cents,
        currency: 'eur',
        customer: user.stripe_customer_id,
        payment_method: user.credit_card_id,
        off_session: true,
        confirm: true,
      })
      end
      paylert.status = "Executée !"
      paylert.save
      UserMailer.with(paylert: @paylert, user: paylert.user).execution.deliver_now
    end
  end
end