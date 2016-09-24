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

ActiveRecord::Schema.define(version: 20160923204240) do

  create_table "balloons", force: :cascade do |t|
    t.integer "flight_number",             null: false
    t.string  "location",      limit: 100, null: false
    t.string  "technician",    limit: 100, null: false
    t.boolean "recovered",                 null: false
  end

  create_table "readings", force: :cascade do |t|
    t.integer  "balloon_id",   null: false
    t.datetime "reading_time", null: false
    t.integer  "altitude",     null: false
    t.float    "temperature",  null: false
    t.integer  "pressure",     null: false
    t.float    "humidity",     null: false
  end

end
