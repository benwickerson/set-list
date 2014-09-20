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

ActiveRecord::Schema.define(version: 20140919234450) do

  create_table "gig_tunes", force: true do |t|
    t.integer  "gig_id"
    t.integer  "tune_id"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "gigs", force: true do |t|
    t.string   "gig"
    t.date     "gig_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rehersal_tunes", force: true do |t|
    t.integer  "rehersal_id"
    t.integer  "tune_id"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rehersals", force: true do |t|
    t.date     "rehersal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tunes", force: true do |t|
    t.string   "tune"
    t.boolean  "vocal"
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
