class UserLeaguesController < ApplicationController

    def new
        @users = User.all
        @leagues = League.all
        @user_league = UserLeague.new
    end

    def create
        user_league = UserLeague.create(user_league_params)
        redirect_to league_path(user_league.league_id)
    end

    private

    def user_league_params
        params.require(:user_league).permit(:user_id, :league_id)
    end
end
