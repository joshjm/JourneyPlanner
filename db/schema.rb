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

ActiveRecord::Schema.define(version: 2020_06_20_083108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "edges", force: :cascade do |t|
    t.bigint "from_id"
    t.bigint "to_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_id"], name: "index_edges_on_from_id"
    t.index ["to_id"], name: "index_edges_on_to_id"
  end

  create_table "stops", force: :cascade do |t|
    t.text "name"
    t.boolean "operational"
    t.decimal "location_x"
    t.decimal "location_y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "user_id"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "start_id"
    t.integer "end_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_id"], name: "index_trips_on_end_id"
    t.index ["start_id"], name: "index_trips_on_start_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.float "balance"
    t.boolean "admin"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "edges", "stops", column: "from_id"
  add_foreign_key "edges", "stops", column: "to_id"
  add_foreign_key "transactions", "users"
  add_foreign_key "trips", "stops", column: "end_id"
  add_foreign_key "trips", "stops", column: "start_id"
  add_foreign_key "trips", "users"
end
