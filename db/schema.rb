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

ActiveRecord::Schema.define(version: 0) do

  create_table "games", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "venue_id"
    t.integer "user_id"
    t.integer "max_players"
    t.integer "current_players"
    t.text "location"
    t.index ["user_id"], name: "index_games_on_user_id"
    t.index ["venue_id"], name: "index_games_on_venue_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "first_name"
    t.text "last_name"
    t.date "date_of_birth"
    t.text "phone_number"
    t.text "skill_level"
    t.integer "games_played"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "password_digest"
  end

  create_table "venues", force: :cascade do |t|
    t.text "name"
    t.text "city"
    t.text "address"
    t.text "zipcode"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
