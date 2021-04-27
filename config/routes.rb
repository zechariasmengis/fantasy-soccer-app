Rails.application.routes.draw do
  resources :leagues
  resources :players
  resources :user_leagues, except: [:new]
  resources :team_players, except: [:new]
  resources :teams
  resources :users

  get "/team_players/new/:id", to: "team_players#new", as: "new_team_player"
  get "/user_leagues/new/:id", to: "user_leagues#new", as: "new_user_league"

end
