class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def show
        @group = Group.find(params[:id])
    end

    def new
        @raids = Raid.all
        @group = Group.new 
    end

    def create
        @raids = Raid.all
        @group = Group.create(group_params)
        create_user_group
        create_group_raids
        redirect_to @group
    end


    private
    def group_params
        params.require(:group).permit(:name, :raids)
    end

    def create_user_group
        @user_group = UserGroup.create(user_id: session[:user_id], group_id: @group.id)
    end

    def create_group_raids
        params[:group][:raids].each do |r|
            GroupRaid.create(raid_id: r, group_id: @group.id)
        end
    end

    

end
