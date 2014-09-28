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

ActiveRecord::Schema.define(version: 20140928121219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booklet_offers", force: true do |t|
    t.integer  "product_id"
    t.integer  "booklet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price"
  end

  add_index "booklet_offers", ["booklet_id"], name: "index_booklet_offers_on_booklet_id", using: :btree
  add_index "booklet_offers", ["product_id"], name: "index_booklet_offers_on_product_id", using: :btree

  create_table "booklets", force: true do |t|
    t.string   "name"
    t.string   "image_path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "market_id"
  end

  add_index "booklets", ["market_id"], name: "index_booklets_on_market_id", using: :btree

  create_table "markets", force: true do |t|
    t.string   "name"
    t.string   "image_path"
    t.text     "address"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.string   "image_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
