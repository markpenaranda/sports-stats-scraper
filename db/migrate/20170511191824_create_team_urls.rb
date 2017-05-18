class CreateTeamUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :team_urls do |t|
      t.string :g
      t.string :model
      t.references :team
      t.string :sourceName
      t.string :url
      t.boolean :active
      t.string :type

      t.timestamps
    end
  end
end
