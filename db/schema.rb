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

ActiveRecord::Schema.define(version: 20161220212615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pomodoro_tags", force: :cascade do |t|
    t.integer  "pomodoro_id"
    t.integer  "tag_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pomodoro_id"], name: "index_pomodoro_tags_on_pomodoro_id", using: :btree
    t.index ["tag_id"], name: "index_pomodoro_tags_on_tag_id", using: :btree
  end

  create_table "pomodoros", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "start_time"
    t.datetime "end_time"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_pomodoros_on_user_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pomodoro_tags", "pomodoros"
  add_foreign_key "pomodoro_tags", "tags"
  add_foreign_key "pomodoros", "users"
end