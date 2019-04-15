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

ActiveRecord::Schema.define(version: 2019_03_12_224110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.string "long_description"
    t.float "latitude"
    t.float "longitude"
    t.float "cost"
    t.integer "state", default: 0
    t.string "begining_hour"
    t.string "ending_hour"
    t.string "begining_date"
    t.string "ending_date"
    t.string "link_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.string "img_file_name"
    t.string "img_content_type"
    t.bigint "img_file_size"
    t.datetime "img_updated_at"
    t.string "video_file_name"
    t.string "video_content_type"
    t.bigint "video_file_size"
    t.datetime "video_updated_at"
    t.bigint "user_id"
    t.index ["category_id"], name: "index_events_on_category_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.string "long_description"
    t.string "sites"
    t.float "cost"
    t.string "begining_hour"
    t.string "ending_hour"
    t.string "link_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.string "img_file_name"
    t.string "img_content_type"
    t.bigint "img_file_size"
    t.datetime "img_updated_at"
    t.string "video_file_name"
    t.string "video_content_type"
    t.bigint "video_file_size"
    t.datetime "video_updated_at"
    t.bigint "user_id"
    t.index ["category_id"], name: "index_routes_on_category_id"
    t.index ["user_id"], name: "index_routes_on_user_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.string "long_description"
    t.float "latitude"
    t.float "longitude"
    t.float "cost"
    t.string "begining_hour"
    t.string "ending_hour"
    t.string "link_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.string "img_file_name"
    t.string "img_content_type"
    t.bigint "img_file_size"
    t.datetime "img_updated_at"
    t.string "video_file_name"
    t.string "video_content_type"
    t.bigint "video_file_size"
    t.datetime "video_updated_at"
    t.bigint "user_id"
    t.index ["category_id"], name: "index_sites_on_category_id"
    t.index ["user_id"], name: "index_sites_on_user_id"
  end

  create_table "typeofusers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "username"
    t.integer "permission_level", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "typeofuser_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["typeofuser_id"], name: "index_users_on_typeofuser_id"
  end

  add_foreign_key "events", "categories"
  add_foreign_key "events", "users"
  add_foreign_key "routes", "categories"
  add_foreign_key "routes", "users"
  add_foreign_key "sites", "categories"
  add_foreign_key "sites", "users"
  add_foreign_key "users", "typeofusers"
end
