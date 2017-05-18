class CreatePlayerUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :player_urls do |t|
      t.references :player
      t.string :sourceName
      t.string :url
      t.boolean :active
      t.string :type

      t.timestamps
    end
  end
end
