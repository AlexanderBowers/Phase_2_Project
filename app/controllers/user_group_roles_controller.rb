class UserGroupRolesController < ApplicationController
    def new
    end

    def create
        @group = Group.find(params[:group_id])
        UserGroupRole.create(user_id: params[:user_id], group_id: params[:group_id], role_id: params[:role_id])
        redirect_to @group
    end

    def destroy
        @group = Group.find(params[:group_id])
        UserGroupRole.all.where(user_id: params[:user_id], group_id: params[:group_id], role_id: params[:role_id]).destroy_all
        redirect_to @group
    end

    def decimate
        @group = Group.find(params[:group_id])
        UserGroupRole.all.where(user_id: params[:user_id], group_id: params[:group_id], role_id: params[:role_id]).destroy_all
        redirect_to @group
    end

    
end
