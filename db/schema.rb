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

ActiveRecord::Schema.define(version: 20150926190121) do

  create_table "accommodations", force: true do |t|
    t.string   "name"
    t.datetime "check_in_time"
    t.datetime "check_out_time"
    t.integer  "group_id"
    t.boolean  "is_final_plan"
    t.integer  "cost"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accomodation_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "accomodation_id"
    t.boolean  "like"
    t.boolean  "dislike"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_users", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.boolean  "like"
    t.boolean  "dislike"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.integer  "schedule_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "description"
    t.integer  "cost"
    t.string   "longitude"
    t.string   "location_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.integer  "group_admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "group_id"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transportation_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "transporation_id"
    t.boolean  "like"
    t.boolean  "dislike"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transportations", force: true do |t|
    t.integer  "group_id"
    t.boolean  "is_final_plan"
    t.boolean  "like"
    t.boolean  "dislike"
    t.string   "departure_location"
    t.string   "arrival_location"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
