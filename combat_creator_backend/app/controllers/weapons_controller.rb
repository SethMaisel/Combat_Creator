class WeaponsController < ApplicationController

    def index
        weapons = Weapon.all 
        render json: weapons
    end

    def show
        weapon = Weapon.find(params [:id])
        render json: weapon
    end
end
