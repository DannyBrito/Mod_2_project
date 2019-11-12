class SessionsController < ApplicationController
    skip_before_action :required_login #check if we need to skip actions for other controllers

    def new #for login
        @user = User.new
        #redirect_to :controller => "users", :action => "new"
    end

    def create
        @user = User.find_by(username: session_params[:username])
        if @user && @user.authenticate(session_params[:password]) 
            session[:user_id] = @user.id
            redirect_to '/'
        else
            redirect_to '/login'
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/'
    end

    private
    def session_params
        params.require(:user).permit(:username,:password)
    end
end