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

ActiveRecord::Schema.define(version: 20160506204306) do

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "phone",      limit: 255
    t.float    "discount",   limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "favorite_color", limit: 255
    t.string   "phone",          limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "rental_records", force: :cascade do |t|
    t.integer  "customer_id", limit: 4,     null: false
    t.integer  "vehicle_id",  limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "lastUpdated"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "output",      limit: 65535
  end

  add_index "rental_records", ["customer_id"], name: "index_rental_records_on_customer_id", using: :btree
  add_index "rental_records", ["vehicle_id"], name: "index_rental_records_on_vehicle_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "veh_reg_no", limit: 255
    t.string   "category",   limit: 255
    t.string   "brand",      limit: 255
    t.string   "name",       limit: 255
    t.binary   "photo",      limit: 65535
    t.decimal  "daily_rate",               precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "z,people", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "favorite_color", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "rental_records", "customers"
  add_foreign_key "rental_records", "vehicles"
end
