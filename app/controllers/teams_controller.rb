class TeamsController < ApplicationController
    
    def show
        @team = Team.find(params[:id])
        @players = @team.team_players
    end

    def new
        @users = User.all
        @team = Team.new
    end

    def create
        team = Team.create(team_params)
        redirect_to team_path(team.id)
    end

    private

    def team_params
        params.require(:team).permit(:name, :primary_color, :secondary_color, :user_id)
    end
end
