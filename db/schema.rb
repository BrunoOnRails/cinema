# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_17_125711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hour_sessions", force: :cascade do |t|
    t.bigint "session_id", null: false
    t.time "hour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_hour_sessions_on_session_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "ticket_id", null: false
    t.date "day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticket_id"], name: "index_sessions_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "title"
    t.float "price"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date_int"
    t.date "date_out"
    t.boolean "selling"
    t.integer "max_capacity"
  end

  add_foreign_key "hour_sessions", "sessions"
  add_foreign_key "sessions", "tickets"
end
