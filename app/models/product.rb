class Product < ApplicationRecord
  belongs_to :shop
  has_many :paylerts, dependent: :destroy
  monetize :price_cents
  CATEGORIES = ["Electro-ménager", "Garage", "High-Tech", "Jardin", "Loisirs et détente", "Maison",  "Vetements" ]
  BRANDS = ["Acer", "Apple", "Asus", "Bosch", "Black & Decker", "Converse", "Inesis", "Jura", "Lenovo", "Nike", "Pfeiffer.inc", "Toshiba", "Willi Waller", "Wilson",]

  after_update_commit  :check_price_paylerts

  def price_euros
    self.price_cents/100
  end

  def price_euros=(price)
    self.price_cents = price.to_f*100
  end
  private

  def check_price_paylerts
    paylert = Paylert.where(product_id: self.id, status: "En attente d'execution").where("bidding_price_cents >= ?", self.price_cents).first
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
      UserMailer.with(paylert: paylert, user: paylert.user).execution.deliver_now
    end
  end
end