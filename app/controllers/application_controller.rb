class ApplicationController < ActionController::Base

    def home
        
    end

    def current_user
        session[:username]
    end


end
