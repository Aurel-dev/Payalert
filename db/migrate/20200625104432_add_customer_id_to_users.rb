class AddCustomerIdToUsers < ActiveRecord::Migration[6.0]
  def create
    Stripe.api_key = 'sk_test_51GxrUBDNX4MweYnnjGOulGeax5HloisTrpEMwIGyop0JEVCgvWBuhPy5zXLauuxJeaYxi3ohzB0P4Co1TYA8gku200awLdV4oA'
    customer = Stripe::Customer.create
    customer.save
  end

  def payment
    Stripe.api_key = 'sk_test_51GxrUBDNX4MweYnnjGOulGeax5HloisTrpEMwIGyop0JEVCgvWBuhPy5zXLauuxJeaYxi3ohzB0P4Co1TYA8gku200awLdV4oA'

    Stripe::PaymentIntent.create({
      amount: 1099,
      currency: 'usd',
      customer: customer['id'],
  end
end
