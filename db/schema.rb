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

ActiveRecord::Schema.define(version: 20161028222322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fav_hikes", force: true do |t|
    t.float  "list_id"
    t.float  "hike_id"
    t.string "hike_url"
  end

  create_table "fav_hikes_lists", force: true do |t|
    t.float  "user_id"
    t.string "list_name"
  end

  create_table "hikesinfo", force: true do |t|
    t.string  "name"
    t.float   "length"
    t.float   "elevation"
    t.float   "highPoint"
    t.string  "url"
    t.text    "description"
    t.decimal "latitude",    precision: 10, scale: 5
    t.decimal "longitude",   precision: 10, scale: 5
  end

  create_table "knex_migrations", force: true do |t|
    t.string   "name"
    t.integer  "batch"
    t.datetime "migration_time"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "facebook_id"
    t.text     "description"
  end

end
