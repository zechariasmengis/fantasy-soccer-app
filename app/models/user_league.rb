class UserLeague < ApplicationRecord
    belongs_to :user
    belongs_to :league

    validates :user_id, presence: true, uniqueness: { scope: :league_id }
end
