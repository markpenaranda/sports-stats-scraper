class CreateGameUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :game_urls do |t|
      t.references :game, foreign_key: true
      t.string :url
      t.string :sourceName
      t.string :type

      t.timestamps
    end
  end
end
