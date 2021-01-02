class UserGroupsController < ApplicationController

    def new

    end

    def create
        @group = Group.find(params[:group_id])
        UserGroup.create(group_id: params[:group_id], user_id: params[:user_id])
        redirect_to @group
    end

   
end
