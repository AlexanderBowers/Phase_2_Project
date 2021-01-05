class GroupsController < ApplicationController
    before_action :logged_in

    def index
        @groups = Group.all
    end

    def show
        @group = Group.find(params[:id])
    end

    def new
        @raids = Raid.all
        @limit = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @group = Group.new 
    end

    def create
        @raids = Raid.all
        @group = Group.create(group_params)
        if @group.valid?
            create_user_group
            create_group_raids
            redirect_to @group
        else
            flash[:errors] = @group.errors.full_messages
            render new_group_path
        end
        
    end

    def finalize
        @group = Group.find(params[:id])
        @group.finish
        redirect_to @group
    end

    def wipe
        @group = Group.find(params[:id])
        @groups = Group.all
        @group.wipe(user_id: [:user_id])
        redirect_to groups_pathparams
    end



    private
    def group_params
        params.require(:group).permit(:name, :raids, :limit)
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
