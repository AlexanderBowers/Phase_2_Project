class UsersController < ApplicationController
   # before_action :logged_in, only: :show

   #authentication and current user currently not working.
    def new
        @user = User.new
    end

    def create
         @user = User.create(user_params)
        if @user.valid?
            session[:id] = @user.id
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            render new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def user_params
        
        params.require(:user).permit(:username, :password)
    end

end
