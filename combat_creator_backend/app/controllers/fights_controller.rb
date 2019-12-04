class FightsController < ApplicationController

    def index
        fights = Fight.all 
        render json: fights, include:[:sequences]
    end
    
    def show
        fight = Fight.find(params [:id])
        render json: fight, include:[:user]
    end

    def create
        fight = Fight.create(
            name: params[:name],
            user_id: params[:user_id]
            )
        render json: fight
    end

    def update
        fight = Fight.find(params[:id])
        fight.update(
            name: params[:name],
            user_id: params[:user_id]
            )
        render json: fight
    end

    def destroy
        fight = Fight.find(params[:id])
        fight.destroy
        render json: {status: 204}
    end
end
