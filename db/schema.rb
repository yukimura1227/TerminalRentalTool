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

ActiveRecord::Schema.define(version: 20160403125314) do

  create_table "application_types", force: true do |t|
    t.string   "name"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applications", force: true do |t|
    t.string   "version"
    t.integer  "application_type_id"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applications", ["application_type_id"], name: "index_applications_on_application_type_id"

  create_table "pc_terminals", force: true do |t|
    t.string   "name"
    t.string   "manage_id"
    t.integer  "rental_status_id"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sims", force: true do |t|
    t.string   "phone_number"
    t.integer  "rental_status_id"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "terminal_id"
  end

  create_table "terminals", force: true do |t|
    t.string   "name"
    t.string   "imei"
    t.integer  "rental_status_id"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "os_version"
    t.integer  "application_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"

  create_table "versions", force: true do |t|
    t.string   "item_type",                     null: false
    t.integer  "item_id",                       null: false
    t.string   "event",                         null: false
    t.string   "whodunnit"
    t.text     "object",     limit: 1073741823
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
