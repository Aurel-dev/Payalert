class ProfileController < ApplicationController

    def show
        @user = current_user
        @paylerts = @user.paylerts
    end
    
end
