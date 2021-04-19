Rails.application.routes.draw do
  resources :user_leagues
  resources :leagues
  resources :players
  resources :team_players
  resources :teams
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
