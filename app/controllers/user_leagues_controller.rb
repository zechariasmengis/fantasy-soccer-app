class UserLeaguesController < ApplicationController

    def show
        @user_league = UserLeague.find(params[:id])
    end

    def new
        @user = User.find(params[:id])
        @users = User.all
        @leagues = League.all
        @user_league = UserLeague.new
        
    end

    def create
        @user_league = UserLeague.create(user_league_params) 
        if @user_league.valid?
            redirect_to league_path(@user_league.league_id)
        else
            flash[:errors] = @user_league.errors.full_messages
            redirect_back(fallback_location: team_path(@user_league[:user_id]))
        end   
    end

    private

    def user_league_params
        params.require(:user_league).permit(:user_id, :league_id)
    end
end
