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

ActiveRecord::Schema.define(version: 20160605140811) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.integer  "firm_id"
    t.string   "email"
    t.string   "phone"
    t.string   "source"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discussions", force: :cascade do |t|
    t.integer  "contact_id"
    t.date     "date"
    t.text     "notes"
    t.string   "follow_up"
    t.datetime "follow_up_time"
    t.string   "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firms", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.string   "on_campus"
    t.string   "location"
    t.string   "geography"
    t.string   "functional_fit"
    t.string   "industry_fit"
    t.string   "booth_alumni"
    t.integer  "firm_score"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
