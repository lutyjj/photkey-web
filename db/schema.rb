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

ActiveRecord::Schema.define(version: 2021_06_09_092445) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "like_logs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "photo_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_like_logs_on_category_id"
    t.index ["photo_id"], name: "index_like_logs_on_photo_id"
    t.index ["user_id"], name: "index_like_logs_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "user_id", null: false
    t.integer "likes"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_photos_on_category_id"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "email"
    t.date "join_date"
    t.string "bio"
    t.integer "like_limit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "token"
    t.index ["login"], name: "index_users_on_login", unique: true
  end

  add_foreign_key "like_logs", "categories"
  add_foreign_key "like_logs", "photos"
  add_foreign_key "like_logs", "users"
  add_foreign_key "photos", "categories"
  add_foreign_key "photos", "users"
end
