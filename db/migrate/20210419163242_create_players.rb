class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :rating
      t.string :club
      t.string :country
      t.integer :age

      t.timestamps
    end
  end
end
