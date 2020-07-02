class ProfileController < ApplicationController

  def index
    @paylerts = Paylert.all
  end

  def show
    @paylerts = Paylert.where(user_id: current_user.id)
    @paylerts_pending = Paylert.where(status: "En attente d'execution", user: current_user)
    @paylerts_executed = Paylert.where(status: "Executée !", user: current_user)
  end

  def new
    @paylert = Paylert.new
  end

  def add_credit_card
    current_user.create_stripe_customer_id!
    payment_intent = Stripe::PaymentIntent.create({
        amount: 1099,
        currency: 'usd',
        customer: current_user.stripe_customer_id,
    })
    @client_secret = payment_intent["client_secret"]
  end
end
