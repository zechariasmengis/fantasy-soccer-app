class TeamPlayersController < ApplicationController

    def show
        @team_player = TeamPlayer.find(params[:id])
    end

    def new
        @team = Team.find(params[:id])
        @teams = Team.all
        all_players = Player.all
        selected_players = @team.players
        @players = (all_players - selected_players).sort_by(&:rating).reverse
        @team_player = TeamPlayer.new
    end

    def create
        @team_player = TeamPlayer.create(team_player_params)
        if @team_player.valid?
            redirect_to team_path(@team_player[:team_id])
        else
            flash[:errors] = @team_player.errors.full_messages
            redirect_back(fallback_location: team_path(@team_player[:team_id]))
        end   
    end

    def destroy
        @team_player = TeamPlayer.find(params[:id])
        @team = Team.find(@team_player.team_id)
        @team_player.destroy

        redirect_to team_path(@team)
    end

    private

    def team_player_params
        params.require(:team_player).permit(:team_id, :player_id)
    end
end
