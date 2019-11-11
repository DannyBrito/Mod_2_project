class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.update(user_params)
    end

    def destroy

    end

    private
    def user_params
        params.require(:user).permit(:username, :mood, :hobby, :job, :food, :music)
    end

end
