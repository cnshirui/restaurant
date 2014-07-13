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

ActiveRecord::Schema.define(version: 20140713142814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: true do |t|
    t.string   "name"
    t.text     "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "burdens", force: true do |t|
    t.integer  "material_id"
    t.integer  "dish_id"
    t.decimal  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "burdens", ["dish_id"], name: "index_burdens_on_dish_id", using: :btree
  add_index "burdens", ["material_id"], name: "index_burdens_on_material_id", using: :btree

  create_table "dishes", force: true do |t|
    t.string   "name"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "page"
  end

  add_index "dishes", ["book_id"], name: "index_dishes_on_book_id", using: :btree

  create_table "materials", force: true do |t|
    t.string   "name"
    t.decimal  "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", force: true do |t|
    t.string   "date"
    t.string   "meal_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "orders", force: true do |t|
    t.integer  "dish_id"
    t.integer  "meal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["dish_id"], name: "index_orders_on_dish_id", using: :btree
  add_index "orders", ["meal_id"], name: "index_orders_on_meal_id", using: :btree

  create_table "shopping_meals", force: true do |t|
    t.integer  "shopping_id"
    t.integer  "meal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "selected"
  end

  create_table "shoppings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "date"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
