class ProfileController < ApplicationController

  def index
    # if params[:query].present?
    #   @paylerts = Paylert.where(location :params[:query])
    # else
    @paylerts = Paylert.all
    # end
  end
    
  def show
    @paylerts = Paylert.where(user_id: current_user.id)
  end
    #     @user = current_user
    #     # @paylerts = @user.paylerts
    #     @paylerts = Paylert.all
    #     @paylert = Paylert.find(params[user_id: current_user.id])
    # end


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
    # def show
    #     # @paylerts = Paylert.where(user_id: current_user.id)
    #   end

private

  def find_paylerts
    @paylert = Paylert.find(params[:id])
  end

  def paylert_params
    params.require(:paylert).permit(:bidding_price)
  end
