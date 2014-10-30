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

ActiveRecord::Schema.define(version: 20141023075207) do

  create_table "application_at_sites", force: true do |t|
    t.string   "application_at_site_id"
    t.decimal  "application_id",         precision: 10, scale: 0
    t.decimal  "site_id",                precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applications", force: true do |t|
    t.decimal  "application_id",   precision: 10, scale: 0
    t.string   "application_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "available_systems", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encountertypes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indicator_counts", force: true do |t|
    t.decimal  "indicator_id", precision: 10, scale: 0
    t.decimal  "site_id",      precision: 10, scale: 0
    t.decimal  "result",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indicators", force: true do |t|
    t.string   "name"
    t.string   "goal"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indies", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.string   "user_id"
    t.decimal  "count",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "role_name"
    t.decimal  "role_id",    precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sampledata", force: true do |t|
    t.string   "user_id"
    t.decimal  "value",      precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.decimal  "site_id",    precision: 10, scale: 0
    t.string   "site_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tryouts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name"
    t.decimal  "count",      precision: 10, scale: 0
  end

  create_table "user_at_sites", force: true do |t|
    t.decimal  "user_id",         precision: 10, scale: 0
    t.decimal  "site_id",         precision: 10, scale: 0
    t.decimal  "user_at_site_id", precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

end
