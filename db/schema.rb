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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111006085646) do

  create_table "comments", :force => true do |t|
    t.string   "user"
    t.string   "email"
    t.text     "content"
    t.integer  "blogpage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "published"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "external_link"
    t.datetime "date"
  end

  create_table "profiles", :force => true do |t|
    t.string   "prefix"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "suffix"
    t.string   "external_link"
    t.string   "university"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "middlename"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
