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
end