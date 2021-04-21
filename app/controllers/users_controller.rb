class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        redirect_to user_path(user.id)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_update_params)
        redirect_to user_path(@user)
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :favorite_club)
    end

    def user_update_params
        params.require(:user).permit(:name, :favorite_club)
    end
end
