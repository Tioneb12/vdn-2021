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

ActiveRecord::Schema.define(version: 2021_11_13_113755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "themes", force: :cascade do |t|
    t.string "meta_title"
    t.string "meta_description"
    t.string "meta_image"
    t.boolean "meta_robots_index"
    t.boolean "meta_robots_follow"
    t.string "title"
    t.string "description"
    t.integer "statut", default: 0
    t.integer "published_posts_count"
    t.string "slug"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.string "pseudo"
    t.string "slug"
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

end
