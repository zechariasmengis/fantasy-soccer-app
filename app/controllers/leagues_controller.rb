class LeaguesController < ApplicationController

    def index
        @leagues = League.all
    end

    def show
        @league = League.find(params[:id])
    end

    def new
        @league = League.new
    end

    def create
        league = League.create(league_params)
        redirect_to league_path(league.id)
    end

    def edit
        @league = League.find(params[:id])
    end

    def update
        @league = League.find(params[:id])
        @league.update(league_params)
        redirect_to league_path(@league)
    end

    private

    def league_params
        params.require(:league).permit(:name)
    end
end
