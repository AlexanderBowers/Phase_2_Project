class UserGroupRolesController < ApplicationController
    def new
    end

    def create
        @group = Group.find(params[:group_id])
        UserGroupRole.create(user_id: params[:user_id], group_id: params[:group_id], role_id: params[:role_id])
        redirect_to @group
    end

    def destroy
    end

    
end
