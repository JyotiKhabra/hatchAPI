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

ActiveRecord::Schema.define(version: 20200714234459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collaborators", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "collaborators", ["trip_id"], name: "index_collaborators_on_trip_id", using: :btree
  add_index "collaborators", ["user_id"], name: "index_collaborators_on_user_id", using: :btree

  create_table "component_items", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image_url"
    t.string   "address"
    t.integer  "component_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "creator_name"
  end

  add_index "component_items", ["component_id"], name: "index_component_items_on_component_id", using: :btree

  create_table "components", force: :cascade do |t|
    t.string   "title"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "components", ["destination_id"], name: "index_components_on_destination_id", using: :btree

  create_table "destinations", force: :cascade do |t|
    t.string   "name"
    t.integer  "trip_id"
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "destinations", ["trip_id"], name: "index_destinations_on_trip_id", using: :btree

  create_table "packing_items", force: :cascade do |t|
    t.text     "description"
    t.integer  "trip_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "checked",      default: false
    t.string   "creator_name"
  end

  add_index "packing_items", ["trip_id"], name: "index_packing_items_on_trip_id", using: :btree

  create_table "trips", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "avatar"
  end

  add_foreign_key "collaborators", "trips"
  add_foreign_key "collaborators", "users"
  add_foreign_key "component_items", "components"
  add_foreign_key "components", "destinations"
  add_foreign_key "destinations", "trips"
  add_foreign_key "packing_items", "trips"
end
