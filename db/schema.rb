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

ActiveRecord::Schema.define(version: 20160721032658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", id: false, force: :cascade do |t|
  end

  create_table "products", id: :integer, force: :cascade do |t|
    t.text  "name",        null: false
    t.text  "brand_id",    null: false
    t.text  "category_id", null: false
    t.float "price",       null: false
  end

  create_table "purchases", id: :integer, force: :cascade do |t|
    t.integer "product_id",                             null: false
    t.integer "user_id",                                null: false
    t.date    "purchase_date", default: -> { "now()" }
    t.boolean "status",                                 null: false
  end

  create_table "users", id: :integer, default: -> { "nextval('user_id_seq'::regclass)" }, force: :cascade do |t|
    t.text   "name",                                            null: false
    t.string "email",       limit: 50,                          null: false
    t.string "address",     limit: 50
    t.string "password",    limit: 50,                          null: false
    t.string "cc_number",   limit: 50,                          null: false
    t.date   "date_joined",            default: -> { "now()" }
  end

end
