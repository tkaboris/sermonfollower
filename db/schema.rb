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

ActiveRecord::Schema.define(version: 20151204081540) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "listeners", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "lastname"
  end

  add_index "listeners", ["email"], name: "index_listeners_on_email", unique: true
  add_index "listeners", ["reset_password_token"], name: "index_listeners_on_reset_password_token", unique: true

  create_table "listeners_speakers", force: :cascade do |t|
    t.integer  "listener_id"
    t.integer  "speaker_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "message_categories", force: :cascade do |t|
    t.integer "category_id"
    t.integer "message_id"
  end

  create_table "messageparts", force: :cascade do |t|
    t.text     "contentpart"
    t.integer  "message_id"
    t.integer  "speaker_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "contentparttitle"
    t.string   "picturepart"
  end

  add_index "messageparts", ["message_id"], name: "index_messageparts_on_message_id"
  add_index "messageparts", ["speaker_id"], name: "index_messageparts_on_speaker_id"

  create_table "messages", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "speaker_id"
    t.string   "picture"
  end

  create_table "speakers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "lastname"
    t.string   "organization_name"
    t.string   "avatar"
  end

  add_index "speakers", ["email"], name: "index_speakers_on_email", unique: true
  add_index "speakers", ["reset_password_token"], name: "index_speakers_on_reset_password_token", unique: true

end
