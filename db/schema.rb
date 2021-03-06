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

ActiveRecord::Schema.define(version: 2018_08_24_141352) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorings", force: :cascade do |t|
    t.integer "category_id"
    t.integer "fileshare_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categorings_on_category_id"
    t.index ["fileshare_id"], name: "index_categorings_on_fileshare_id"
  end

  create_table "fileshares", force: :cascade do |t|
    t.string "category"
    t.string "title"
    t.string "keyword"
    t.string "description"
    t.string "file"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywordings", force: :cascade do |t|
    t.integer "keyword_id"
    t.integer "fileshare_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fileshare_id"], name: "index_keywordings_on_fileshare_id"
    t.index ["keyword_id"], name: "index_keywordings_on_keyword_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sharings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fileshare_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fileshare_id"], name: "index_sharings_on_fileshare_id"
    t.index ["user_id"], name: "index_sharings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
