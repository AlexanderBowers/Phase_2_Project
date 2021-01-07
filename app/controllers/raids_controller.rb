class RaidsController < ApplicationController

    def index
        @raids = Raid.all
    end

    def new
        @raid = Raid.new
    end

    def create
        @raid = Raid.create(raid_params.merge(:reward_item_1 => Faker::Games::ElderScrolls.weapon, :reward_item_2 => Faker::Games::ElderScrolls.jewelry))
        if @raid.valid?
            redirect_to new_group_path
        else
            flash[:errors] = @raid.errors.full_messages
            render new_raid_path
        end
    end

    def show
        @raid = Raid.find(params[:id])
    end

    private
    
    def raid_params
        params.require(:raid).permit(:name, :image, :description, :image)
    end




end