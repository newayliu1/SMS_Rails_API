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

ActiveRecord::Schema.define(version: 20170303163121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "inventories", force: :cascade do |t|
    t.integer  "user_id",                            null: false
    t.integer  "product_id",                         null: false
    t.decimal  "price",      precision: 5, scale: 2, null: false
    t.string   "section",                            null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["product_id"], name: "index_inventories_on_product_id", using: :btree
    t.index ["user_id"], name: "index_inventories_on_user_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",         null: false
    t.integer  "product_id",      null: false
    t.date     "expiration_date", null: false
    t.integer  "amount",          null: false
    t.date     "order_date",      null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["product_id"], name: "index_orders_on_product_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_products_on_name", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "examples", "users"
  add_foreign_key "inventories", "products"
  add_foreign_key "inventories", "users"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
end
