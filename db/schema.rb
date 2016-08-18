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

ActiveRecord::Schema.define(version: 20160529163715) do

  create_table "access_denials", force: :cascade do |t|
    t.integer  "room_id"
    t.date     "start_date", null: false
    t.date     "end_date",   null: false
    t.integer  "day",        null: false
    t.time     "start_time", null: false
    t.time     "end_time",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "access_denials", ["room_id"], name: "index_access_denials_on_room_id"

  create_table "access_permissions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.date     "start_date", null: false
    t.date     "end_date",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "access_permissions", ["room_id"], name: "index_access_permissions_on_room_id"
  add_index "access_permissions", ["user_id"], name: "index_access_permissions_on_user_id"

  create_table "buildings", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "buildings", ["name"], name: "index_buildings_on_name"

  create_table "instruments", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opening_times", force: :cascade do |t|
    t.integer  "building_id"
    t.integer  "day",         null: false
    t.date     "start_date",  null: false
    t.date     "end_date",    null: false
    t.time     "start_time",  null: false
    t.time     "end_time",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "opening_times", ["building_id"], name: "index_opening_times_on_building_id"

  create_table "reservation_policies", force: :cascade do |t|
    t.integer  "enforced_by", default: 0
    t.integer  "daily_quota",             null: false
    t.integer  "total_quota",             null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.text     "apply_on"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "room_id",    null: false
    t.datetime "start_time", null: false
    t.datetime "end_time",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reservations", ["room_id"], name: "index_reservations_on_room_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "rooms", force: :cascade do |t|
    t.string   "name",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "building_id", null: false
    t.text     "instruments"
  end

  add_index "rooms", ["building_id"], name: "index_rooms_on_building_id"
  add_index "rooms", ["name"], name: "index_rooms_on_name"

  create_table "settings", force: :cascade do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true

  create_table "study_programmes", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "instrument"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["first_name"], name: "index_users_on_first_name"
  add_index "users", ["last_name"], name: "index_users_on_last_name"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
