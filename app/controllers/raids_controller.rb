class RaidsController < ApplicationController

    def new
        @raid = Raid.new
    end

    def create
        Raid.create(raid_params)
        redirect_to new_group_path
    end

    def show
        @raid = Raid.find(params[:id])
    end

    private
    
    def raid_params
        params.require(:raid).permit(:name)
    end




end