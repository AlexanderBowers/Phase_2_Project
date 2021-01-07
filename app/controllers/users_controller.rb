class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
         @user = User.create(user_params.merge(:pix_url => Faker::Avatar.image))
        if @user.valid?
            redirect_to login_path
        else
            flash[:errors] = @user.errors.full_messages
            render new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def user_params
        
        params.require(:user).permit(:username, :email, :discord_id, :steam_id, :user_desc, :password)
    end

end
