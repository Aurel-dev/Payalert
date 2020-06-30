class ProfileController < ApplicationController

  def index
    @paylerts = Paylert.all
  end

  def show
    @paylerts = Paylert.where(user_id: current_user.id)
  end

  def new
    @paylert = Paylert.new
  end

  def add_credit_card
    customer = Stripe::Customer.create
    current_user.update(stripe_customer_id: customer["id"])
    payment_intent = Stripe::PaymentIntent.create({
        amount: 1099,
        currency: 'usd',
        customer: customer['id'],
    })
    @client_secret = payment_intent["client_secret"]
  end
end
