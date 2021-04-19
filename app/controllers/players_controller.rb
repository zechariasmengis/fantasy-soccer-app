class PlayersController < ApplicationController

    def index
        @players = Player.all
    end

    def show
        @player = Player.find(params[:id])
    end

    private

    def player_params
    end
end
