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

ActiveRecord::Schema.define(version: 20140203183037) do

  create_table "listings", force: true do |t|
    t.string   "name"
    t.text     "offer"
    t.date     "expires"
    t.text     "menu"
    t.boolean  "available"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "name"
    t.string   "password_digest"
    t.string   "agreement_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "agrement_file_name"
    t.string   "agrement_content_type"
    t.integer  "agrement_file_size"
    t.datetime "agrement_updated_at"
  end

end
