class PaylertsController < ApplicationController

    def new
        @paylert = Paylert.new
    end

    def create
        @paylert = Paylert.new(paylert_params)
        if @paylert.save
            redirect to @paylert
        else
            redirect_to products_path
        end
    end

    def paylert_params
        params.require(:paylert).permit(:bidding_price)
      end


end