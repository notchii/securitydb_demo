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

ActiveRecord::Schema.define(version: 20150916133241) do

  create_table "authorities", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "authority",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "authorities", ["user_id"], name: "index_authorities_on_user_id", using: :btree

  create_table "member_applications", force: :cascade do |t|
    t.integer  "request_type",               limit: 4,     default: 0,     null: false
    t.integer  "status",                     limit: 4
    t.integer  "member_id",                  limit: 4
    t.string   "last_name_kanji",            limit: 255
    t.string   "first_name_kanji",           limit: 255
    t.string   "last_name_kana",             limit: 255
    t.string   "first_name_kana",            limit: 255
    t.string   "last_name_romaji",           limit: 255
    t.string   "first_name_romaji",          limit: 255
    t.string   "project_name",               limit: 255
    t.integer  "partner_company_id",         limit: 4
    t.string   "reconsignment_company_name", limit: 255
    t.integer  "leader_id",                  limit: 4
    t.integer  "administrator_id",           limit: 4
    t.string   "work_location",              limit: 255
    t.string   "passport_no",                limit: 255
    t.string   "email_address",              limit: 255
    t.boolean  "email_flg",                                default: false
    t.boolean  "internet_flg",                             default: false
    t.string   "global_id",                  limit: 255
    t.string   "esd_email_address",          limit: 255
    t.text     "to_acknowedger",             limit: 65535
    t.text     "to_applicant",               limit: 65535
    t.datetime "application_date"
    t.integer  "applicant_id",               limit: 4
    t.datetime "acknowledge_date"
    t.integer  "acknowledger_id",            limit: 4
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.boolean  "partner_flg",                              default: false
  end

  add_index "member_applications", ["member_id"], name: "index_member_applications_on_member_id", using: :btree
  add_index "member_applications", ["partner_company_id"], name: "index_member_applications_on_partner_company_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "password",                      limit: 255
    t.string   "last_name_kanji",               limit: 255
    t.string   "first_name_kanji",              limit: 255
    t.string   "last_name_kana",                limit: 255
    t.string   "first_name_kana",               limit: 255
    t.string   "last_name_romaji",              limit: 255
    t.string   "first_name_romaji",             limit: 255
    t.boolean  "partner_flg",                               default: false
    t.string   "passport_no",                   limit: 255
    t.string   "email_address",                 limit: 255
    t.string   "global_id",                     limit: 255
    t.boolean  "production_terminal_room_pass"
    t.string   "esd_email_address",             limit: 255
    t.boolean  "esd_internet_flg",                          default: false
    t.boolean  "internet_flg",                              default: false
    t.boolean  "email_flg",                                 default: false
    t.integer  "partner_company_id",            limit: 4
    t.integer  "leader_id",                     limit: 4
    t.string   "project_name",                  limit: 255
    t.integer  "administrator_id",              limit: 4
    t.string   "work_location",                 limit: 255
    t.string   "reconsignment_company_name",    limit: 255
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.boolean  "deleted_flg",                               default: false
  end

  add_index "members", ["partner_company_id"], name: "index_members_on_partner_company_id", using: :btree

  create_table "partner_companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "userid",                 limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["userid"], name: "index_users_on_userid", unique: true, using: :btree

  add_foreign_key "authorities", "users"
  add_foreign_key "member_applications", "members"
  add_foreign_key "member_applications", "partner_companies"
  add_foreign_key "members", "partner_companies"
end
