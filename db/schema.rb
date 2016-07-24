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

ActiveRecord::Schema.define(version: 20160724141612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category", limit: 100
  end

  create_table "products", force: :cascade do |t|
    t.string  "name",        limit: 100
    t.string  "description"
    t.integer "brand_id"
    t.integer "category_id"
    t.float   "price"
    t.string  "photo_url"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "user_id"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 100
    t.string   "email",      limit: 80
    t.string   "address"
    t.string   "password",   limit: 30
    t.integer  "cc_number"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_url"
  end

  add_foreign_key "products", "brands"
  add_foreign_key "products", "categories"
  add_foreign_key "purchases", "products"
  add_foreign_key "purchases", "users"
end
