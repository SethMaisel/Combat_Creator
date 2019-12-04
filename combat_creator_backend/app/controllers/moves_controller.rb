class MovesController < ApplicationController

    def index
        moves = Move.all 
        render json: moves
    end

    def show
        move = Move.find(params [:id])
        render json: move
    end

    def create
        move = Move.create(
            action: params[:action],
            technique: params[:technique],
            line: params[:line]
            )
        render json: move
    end

    def update
        move = Move.find(params[:id])
        move.update(
            action: params[:action],
            technique: params[:technique],
            line: params[:line]
            )
        render json: move
    end

    def destroy
        move = Move.find(params[:id])
        Move.destroy
        render json: {status: 204}
    end
end
