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

ActiveRecord::Schema.define(version: 20150916223418) do

  create_table "listings", force: :cascade do |t|
    t.string   "street",     null: false
    t.string   "status",     null: false
    t.integer  "price",      null: false
    t.integer  "bedrooms",   null: false
    t.integer  "bathrooms",  null: false
    t.integer  "sq_ft",      null: false
    t.float    "lat",        null: false
    t.float    "lng",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "listings", ["bathrooms"], name: "index_listings_on_bathrooms"
  add_index "listings", ["bedrooms"], name: "index_listings_on_bedrooms"
  add_index "listings", ["price"], name: "index_listings_on_price"

end
