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

ActiveRecord::Schema.define(version: 20150824151852) do

  create_table "breeds", force: :cascade do |t|
    t.string   "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "breed_id"
    t.date     "dob"
    t.string   "allergies"
    t.string   "vet_name"
    t.string   "vet_phone"
    t.boolean  "in_daycare"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "cats", ["breed_id"], name: "index_cats_on_breed_id"
  add_index "cats", ["owner_id"], name: "index_cats_on_owner_id"

  create_table "owners", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "phone"
    t.string   "emergency_name"
    t.string   "emergency_phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
