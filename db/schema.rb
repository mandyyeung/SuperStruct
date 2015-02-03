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

ActiveRecord::Schema.define(version: 20150203011545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "pco_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pcos", force: :cascade do |t|
    t.decimal  "num"
    t.string   "type"
    t.string   "description"
    t.text     "discovery"
    t.integer  "sub_proposal_num"
    t.decimal  "al_num"
    t.decimal  "ddc_co_num"
    t.decimal  "sub_co_num"
    t.date     "proposal_received"
    t.date     "df_submitted"
    t.date     "df_returned"
    t.date     "sent_to_gt"
    t.date     "cleared_gt"
    t.date     "sent_to_ddc"
    t.decimal  "ddc_approved"
    t.string   "eao"
    t.date     "approved"
    t.decimal  "approximate"
    t.decimal  "proposed"
    t.decimal  "tstv_estimate"
    t.decimal  "gt_estimate"
    t.decimal  "submitted"
    t.string   "bc_to"
    t.decimal  "deduct"
    t.string   "bc_from"
    t.decimal  "add"
    t.boolean  "used_allowance"
    t.string   "tdrive"
    t.integer  "subcontractor_id"
    t.integer  "status_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "filter"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "bic"
  end

  create_table "subcontractors", force: :cascade do |t|
    t.string   "bp"
    t.string   "company"
    t.string   "contact"
    t.string   "address"
    t.string   "phone"
    t.string   "trade"
    t.decimal  "contract_value"
    t.string   "logo"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "email"
  end

  add_index "subcontractors", ["user_id"], name: "index_subcontractors_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                                                   null: false
    t.string   "last_name",                                                    null: false
    t.string   "email",                  default: "",                          null: false
    t.string   "encrypted_password",     default: "",                          null: false
    t.string   "avatar",                 default: "http://placehold.it/64x64"
    t.boolean  "admin",                  default: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                           null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
