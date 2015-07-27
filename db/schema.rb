# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150724034903) do

  create_table "comments", force: :cascade do |t|
    t.string   "content",    limit: 255
    t.integer  "swit_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "comments", ["swit_id"], name: "index_comments_on_swit_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "destroys", force: :cascade do |t|
    t.string   "comment",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "door_tags", force: :cascade do |t|
    t.string   "tag",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "swit_id",    limit: 4
  end

  add_index "door_tags", ["swit_id"], name: "index_door_tags_on_swit_id", using: :btree

  create_table "swit_sours", force: :cascade do |t|
    t.integer  "rating",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id",    limit: 4
    t.integer  "swit_id",    limit: 4
  end

  add_index "swit_sours", ["swit_id"], name: "index_swit_sours_on_swit_id", using: :btree
  add_index "swit_sours", ["user_id"], name: "index_swit_sours_on_user_id", using: :btree

  create_table "swits", force: :cascade do |t|
    t.string   "content",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4
    t.integer  "swit_id",    limit: 4
  end

  add_index "swits", ["swit_id"], name: "index_swits_on_swit_id", using: :btree
  add_index "swits", ["user_id"], name: "index_swits_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

  add_foreign_key "comments", "swits"
  add_foreign_key "comments", "users"
  add_foreign_key "door_tags", "swits"
  add_foreign_key "swit_sours", "swits"
  add_foreign_key "swit_sours", "users"
  add_foreign_key "swits", "swits"
  add_foreign_key "swits", "users"
end
