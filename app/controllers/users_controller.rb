class UsersController < ApplicationController
    before_action :find_user, only:[:show, :edit, :update, :destroy]

    def index 
        #redirect_to '/' if !@logged_in_user
        @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        
    end

    def create 
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to users_path(@user)
    end

    def destroy
        @user.destroy
        redirect_to users_path(@user)
    end

    private
    
    def user_params
    params.require(:user).permit(:username, :mood, :hobby, :job, :food, :music, :password, :password_confirmation)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
