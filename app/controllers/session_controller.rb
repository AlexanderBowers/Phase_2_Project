class SessionController < ApplicationController

    def new
    end

    def create
       user = User.find_by(username: params[:username])
       session[:user_id] = user.id
       redirect_to user
    end

    def destroy
        reset_session
        redirect_to new_user_path
    end
end
