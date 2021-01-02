class SessionsController < ApplicationController

    def new
    end

    def create
       user = User.find_by(username: params[:username])
       if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to groups_path
       else
            render 'sessions/new'
       end
    end

    def destroy
        reset_session
        redirect_to new_session_path
    end
end
