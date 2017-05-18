# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170511200618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_teams", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "game_id"
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_teams_on_game_id", using: :btree
    t.index ["team_id"], name: "index_game_teams_on_team_id", using: :btree
  end

  create_table "game_urls", force: :cascade do |t|
    t.integer  "game_id"
    t.string   "url"
    t.string   "sourceName"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_urls_on_game_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.datetime "schedule"
    t.string   "status"
    t.integer  "league_id"
    t.string   "venue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_games_on_league_id", using: :btree
  end

  create_table "league_schedules_urls", force: :cascade do |t|
    t.integer  "league_id"
    t.string   "url"
    t.string   "type"
    t.string   "sourceName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_league_schedules_urls_on_league_id", using: :btree
  end

  create_table "league_teams_urls", force: :cascade do |t|
    t.integer  "league_id"
    t.string   "url"
    t.string   "type"
    t.string   "sourceName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_league_teams_urls_on_league_id", using: :btree
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.string   "sports"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_urls", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "sourceName"
    t.string   "url"
    t.boolean  "active"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_urls_on_player_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "jersey_number"
    t.integer  "height"
    t.integer  "weight"
    t.string   "country"
    t.string   "hometown"
    t.integer  "age"
    t.integer  "team_id"
    t.boolean  "active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["team_id"], name: "index_players_on_team_id", using: :btree
  end

  create_table "team_urls", force: :cascade do |t|
    t.string   "g"
    t.string   "model"
    t.integer  "team_id"
    t.string   "sourceName"
    t.string   "url"
    t.boolean  "active"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_urls_on_team_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.integer  "league_id"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["league_id"], name: "index_teams_on_league_id", using: :btree
  end

  add_foreign_key "game_teams", "games"
  add_foreign_key "game_teams", "teams"
  add_foreign_key "game_urls", "games"
  add_foreign_key "league_schedules_urls", "leagues"
  add_foreign_key "league_teams_urls", "leagues"
end
