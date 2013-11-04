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

ActiveRecord::Schema.define(version: 20130603164115) do

  create_table "address_cards", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "address_cards_contact_lists", id: false, force: true do |t|
    t.integer "address_card_id"
    t.integer "contact_list_id"
  end

  add_index "address_cards_contact_lists", ["address_card_id", "contact_list_id"], name: "index_accl_address_card_id_contact_list_id", unique: true

  create_table "addresses", force: true do |t|
    t.string   "line_1"
    t.string   "line_2"
    t.string   "line_3"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.string   "country"
    t.integer  "address_card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_lists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_lists_users", id: false, force: true do |t|
    t.integer "contact_list_id"
    t.integer "user_id"
  end

  add_index "contact_lists_users", ["contact_list_id", "user_id"], name: "index_contact_lists_users_on_contact_list_id_and_user_id", unique: true

  create_table "emails", force: true do |t|
    t.string   "value"
    t.string   "kind"
    t.integer  "address_card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.string   "value"
    t.string   "kind"
    t.integer  "address_card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "address_card_id"
  end

end
