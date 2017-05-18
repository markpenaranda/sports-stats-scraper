class CreateGameTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :game_teams do |t|
      t.references :team, foreign_key: true
      t.references :game, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
