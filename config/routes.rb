Rails.application.routes.draw do
  resources :user_leagues
  resources :leagues
  resources :players
  resources :team_players, except: [:new]
  resources :teams
  resources :users

  get "/team_players/new/:id", to: "team_players#new", as: "new_team_player"
  # delete "/team_players/destroy/:id", to: "team_players#destroy", as: "new_team_player"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
