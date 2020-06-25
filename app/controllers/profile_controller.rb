class ProfileController < ApplicationController

    def show
        @user = current_user
        @paylerts = @user.paylerts
    end
    
    def add_credit_card
        customer = Stripe::Customer.create
        payment_intent = Stripe::PaymentIntent.create({
            amount: 1099,
            currency: 'usd',
            customer: customer['id'],
        })
        @client_secret = payment_intent["client_secret"]
    end

    
    # Etape 6

    # def payment_method
    #     Stripe::PaymentMethod.list({
    #     customer: '{{CUSTOMER_ID}}',
    #     type: 'card',
    #     })
    # end

    # def payment_intent
    #     begin
    #         intent = Stripe::PaymentIntent.create({
    #           amount: 1099,
    #           currency: 'usd',
    #           customer: '{{CUSTOMER_ID}}',
    #           payment_method: '{{PAYMENT_METHOD_ID}}',
    #           off_session: true,
    #           confirm: true,
    #         })
    #     rescue Stripe::CardError => e
    #         # Error code will be authentication_required if authentication is needed
    #         puts "Error is: #{e.error.code}"
    #         payment_intent_id = e.error.payment_intent.id
    #         payment_intent = Stripe::PaymentIntent.retrieve(payment_intent_id)
    #         puts payment_intent.id
    #     end
    # end
end
