class User < ApplicationRecord
    has_one :team
    has_many :user_leagues
    has_many :leagues, through: :user_leagues
end
