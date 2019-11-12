class SessionsController < ApplicationController

    def new #for login
        @user = User.new
    end

    def create
        session[:username] = params[:user][:username]
        redirect_to '/'
    end

    def destroy
        session[:username].delete
    end

end