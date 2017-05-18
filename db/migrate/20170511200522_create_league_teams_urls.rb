class CreateLeagueTeamsUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :league_teams_urls do |t|
      t.references :league, foreign_key: true
      t.string :url
      t.string :type
      t.string :sourceName

      t.timestamps
    end
  end
end
