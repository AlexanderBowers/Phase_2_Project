class RaidsController < ApplicationController

    def index
        @raids = Raid.all
    end

    def new
        @raid = Raid.new
    end

    def create
        
        Raid.create(raid_params.merge(:reward_item_1 => Faker::Games::ElderScrolls.weapon, :reward_item_2 => Faker::Games::ElderScrolls.jewelry))
        
        
    
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