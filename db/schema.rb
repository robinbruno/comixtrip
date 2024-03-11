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

ActiveRecord::Schema[7.1].define(version: 2024_03_11_132713) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_comic_trips", force: :cascade do |t|
    t.bigint "album_id", null: false
    t.bigint "comic_trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_album_comic_trips_on_album_id"
    t.index ["comic_trip_id"], name: "index_album_comic_trips_on_comic_trip_id"
  end

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.boolean "visibility"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_albums_on_user_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "comic_trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comic_trip_id"], name: "index_bookmarks_on_comic_trip_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "comic_trips", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comic_trips_on_user_id"
  end

  create_table "compositions", force: :cascade do |t|
    t.integer "z_index"
    t.bigint "vignette_id", null: false
    t.bigint "element_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["element_id"], name: "index_compositions_on_element_id"
    t.index ["vignette_id"], name: "index_compositions_on_vignette_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "image_url"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vignettes", force: :cascade do |t|
    t.text "text01"
    t.bigint "comic_trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "text02"
    t.index ["comic_trip_id"], name: "index_vignettes_on_comic_trip_id"
  end

  add_foreign_key "album_comic_trips", "albums"
  add_foreign_key "album_comic_trips", "comic_trips"
  add_foreign_key "albums", "users"
  add_foreign_key "bookmarks", "comic_trips"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "comic_trips", "users"
  add_foreign_key "compositions", "elements"
  add_foreign_key "compositions", "vignettes"
  add_foreign_key "vignettes", "comic_trips"
end
