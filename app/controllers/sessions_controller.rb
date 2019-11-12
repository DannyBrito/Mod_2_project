class SessionsController < ApplicationController

    def new #for login
        @user = User.new
        #redirect_to :controller => "users", :action => "new
    end

    def create
        session[:username] = params[:user][:username]
        redirect_to '/'
    end

    def destroy
        session.delete :username
        redirect_to '/'
    end

end