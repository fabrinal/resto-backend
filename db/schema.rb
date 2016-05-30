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

ActiveRecord::Schema.define(version: 20160530020802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "category_id"
    t.string   "status"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "menu_photo_file_name"
    t.string   "menu_photo_content_type"
    t.integer  "menu_photo_file_size"
    t.datetime "menu_photo_updated_at"
  end

  add_index "menus", ["category_id"], name: "index_menus_on_category_id", using: :btree

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "menu_id"
    t.integer  "quantity"
    t.decimal  "order_price"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "order_items", ["menu_id"], name: "index_order_items_on_menu_id", using: :btree
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "table"
    t.string   "status"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "paid",       default: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "order_id"
    t.decimal  "paid_amount"
    t.decimal  "discount"
    t.string   "validation_id"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "transactions", ["order_id"], name: "index_transactions_on_order_id", using: :btree

  add_foreign_key "menus", "categories"
  add_foreign_key "order_items", "menus"
  add_foreign_key "order_items", "orders"
  add_foreign_key "transactions", "orders"
end
