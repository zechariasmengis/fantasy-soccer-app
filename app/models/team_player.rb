class TeamPlayer < ApplicationRecord
    belongs_to :team
    belongs_to :player

    validates :player_id, presence: true, uniqueness: { scope: :team_id }
end
