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

ActiveRecord::Schema.define(version: 20161101190633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.integer  "tool_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.integer  "borrower_id"
    t.integer  "listing_id"
    t.integer  "transaction_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.string   "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "tool_id"
    t.integer  "borrower_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.string   "safety_level"
    t.string   "portability"
    t.string   "condition"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "lender_id"
    t.integer  "borrower_id"
    t.string   "availability", default: "Available"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password_digest"
    t.integer  "zip_code"
  end

end
