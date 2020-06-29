class StripePaymentIntentService
    def call(event)
      stripe_customer_id = event.data.object.customer
      credit_card_id = event.data.object.payment_method
   
      user = User.find_by(stripe_customer_id: stripe_customer_id)
      user.credit_card_id = credit_card_id
      user.save!

      puts "ok pour parcours user"
    end
end
