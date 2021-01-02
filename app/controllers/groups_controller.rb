class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def show
        @group = Group.find(params[:id])
    end

    def new
        @group = Group.new 
    end

    def create
        @group = Group.create(group_params)
        @user_group = UserGroup.create(user_id: session[:user_id], group_id: @group.id)
        redirect_to @group
    end


    private
    def group_params
        params.require(:group).permit(:name)
    end

    

end
