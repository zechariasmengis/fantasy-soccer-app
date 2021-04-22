class PlayersController < ApplicationController

    def index
        @players = Player.all.sort_by(&:rating).reverse
    end

    def show
        @player = Player.find(params[:id])
    end

    private

    def player_params
    end
end
