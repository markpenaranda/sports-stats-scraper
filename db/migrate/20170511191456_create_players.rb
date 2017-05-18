class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :jersey_number
      t.integer :height
      t.integer :weight
      t.string :country
      t.string :hometown
      t.integer :age
      t.references :team
      t.boolean :active

      t.timestamps
    end
  end
end
