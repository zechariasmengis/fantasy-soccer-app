class TeamPlayersController < ApplicationController

    def new
        @teams = Team.all
        # potentially write a custom method to only render players that aren't currently in the team
        @players = Player.all
        @team_player = TeamPlayer.new
    end

    def create
        team_player = TeamPlayer.create(team_player_params)
        redirect_to team_path(team_player[:team_id])
    end 

    private

    def team_player_params
        params.require(:team_player).permit(:team_id, :player_id)
    end
end
