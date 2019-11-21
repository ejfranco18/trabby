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

ActiveRecord::Schema.define(version: 2019_11_21_175162) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.bigint "plan_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_activities_on_place_id"
    t.index ["plan_id"], name: "index_activities_on_plan_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "foursquare_category_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "continent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.text "description"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "images"
    t.text "description"
    t.string "opening_hours"
    t.float "latitude"
    t.float "longitude"
    t.integer "duration"
    t.string "link"
    t.string "type"
    t.bigint "city_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rating"
    t.index ["category_id"], name: "index_places_on_category_id"
    t.index ["city_id"], name: "index_places_on_city_id"
  end

  create_table "plans", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.string "search_items", default: [], array: true
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "category_ids", default: [], array: true
    t.integer "type_ids", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

<<<<<<< HEAD
  create_table "prices", force: :cascade do |t|
    t.integer "value"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_caches", force: :cascade do |t|
    t.string "url", null: false
    t.json "response", default: {}
    t.index ["url"], name: "index_request_caches_on_url", unique: true
  end

=======
>>>>>>> master
  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "places"
  add_foreign_key "activities", "plans"
  add_foreign_key "places", "categories"
  add_foreign_key "places", "cities"
  add_foreign_key "plans", "users"
  add_foreign_key "preferences", "users"
end
