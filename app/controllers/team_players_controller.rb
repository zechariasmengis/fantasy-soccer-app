class TeamPlayersController < ApplicationController

    def new
        @team = Team.find(params[:id])
        @teams = Team.all
        all_players = Player.all
        selected_players = @team.players
        @players = all_players - selected_players
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
