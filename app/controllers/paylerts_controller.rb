class PaylertsController < ApplicationController

    def new
        @paylert = Paylert.new
    end

    def create
        @paylert = Paylert.new(paylert_params)
        @paylert.product_id = params[:product_id]
        @paylert.user = current_user
        if @paylert.save
            redirect_to profile_path
        else
            raise
            redirect_to products_path
        end
    end

    def show
        # @product = Product.where(product_id: product.id)
    end

    def paylert_params
        params.require(:paylert).permit(:bidding_price, :product_id)
      end


end