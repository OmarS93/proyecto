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

ActiveRecord::Schema.define(version: 20140905190559) do

  create_table "__sm_ext_mgmt", force: true do |t|
    t.text "type",  null: false
    t.text "value"
  end

  create_table "areas", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "number"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", force: true do |t|
    t.integer  "document_id"
    t.string   "number_documnet"
    t.string   "name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "email"
    t.string   "telephone"
    t.integer  "area_id"
    t.integer  "userr_id"
    t.integer  "online_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instructors", ["area_id"], name: "index_instructors_on_area_id"
  add_index "instructors", ["document_id"], name: "index_instructors_on_document_id"
  add_index "instructors", ["online_id"], name: "index_instructors_on_online_id"
  add_index "instructors", ["userr_id"], name: "index_instructors_on_userr_id"

  create_table "onlines", force: true do |t|
    t.string   "number"
    t.string   "number_machines"
    t.string   "number_operator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "machine"
    t.string   "time_stadar"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "operations", ["area_id"], name: "index_operations_on_area_id"

  create_table "opers", force: true do |t|
    t.integer  "document_id"
    t.string   "number_document"
    t.string   "name"
    t.string   "last_name"
    t.integer  "online_id"
    t.string   "direccion"
    t.string   "email"
    t.string   "telephone"
    t.string   "type_formation"
    t.date     "date_home"
    t.date     "date_end"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opers", ["document_id"], name: "index_opers_on_document_id"
  add_index "opers", ["group_id"], name: "index_opers_on_group_id"
  add_index "opers", ["online_id"], name: "index_opers_on_online_id"

  create_table "userrs", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
