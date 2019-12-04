class SequencesController < ApplicationController

    def index
        sequences = Sequence.all 
        render json: sequences
    end

    def show
        sequence = Sequence.find(params [:id])
        render json: sequence
    end

    def create
        sequence = Sequence.create(
            fight_id: params[:fight_id],
            character_id: params[:character_id],
            weapon_id: params[:weapon_id],
            move_id: params[:move_id]
            )
        render json: sequence
    end

    def update
        sequence = Sequence.find(params[:id])
        sequences.update(
            fight_id: params[:fight_id],
            character_id: params[:character_id],
            weapon_id: params[:weapon_id],
            move_id: params[:move_id]
            )
        render json: sequences
    end

    def destroy
        sequence = Sequence.find(params[:id])
        sequence.destroy
        render json: {status: 204}
    end
end
