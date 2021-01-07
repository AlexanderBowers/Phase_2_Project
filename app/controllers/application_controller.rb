class ApplicationController < ActionController::Base

    def logged_in
        if !session[:user_id]
            redirect_to login_path
        end
    end

    def current_user
        @current_user ||= User.find(session[:user_id])
    end

    helper_method :current_user
    
end
