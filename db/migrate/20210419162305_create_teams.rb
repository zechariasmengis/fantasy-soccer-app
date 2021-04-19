class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :primary_color
      t.string :secondary_color
      t.integer :user_id

      t.timestamps
    end
  end
end
