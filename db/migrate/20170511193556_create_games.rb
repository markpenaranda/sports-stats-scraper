class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.datetime :schedule
      t.string :status
      t.references :league
      t.string :venue

      t.timestamps
    end
  end
end
