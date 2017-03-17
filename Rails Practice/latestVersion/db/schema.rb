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

ActiveRecord::Schema.define(version: 20170227065355) do

  create_table "allattributes", force: :cascade do |t|
    t.string   "normal_search"
    t.integer  "petDog"
    t.integer  "age"
    t.text     "message"
    t.string   "password"
    t.integer  "parent_id"
    t.string   "user_name"
    t.date     "user_born_on"
    t.date     "user_graduation_day"
    t.date     "user_month_day"
    t.date     "user_week_day"
    t.string   "user_homepage"
    t.text     "user_address"
    t.string   "user_favt_color"
    t.date     "task_started_at"
    t.string   "product_price"
    t.string   "product_discount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "chks", force: :cascade do |t|
    t.string   "normal_search"
    t.integer  "petDog"
    t.integer  "age"
    t.text     "message"
    t.string   "password"
    t.integer  "parent_id"
    t.string   "user_name"
    t.date     "user_born_on"
    t.date     "user_graduation_day"
    t.date     "user_month_day"
    t.date     "user_week_day"
    t.string   "user_homepage"
    t.text     "user_address"
    t.string   "user_favt_color"
    t.date     "task_started_at"
    t.string   "product_price"
    t.string   "product_discount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "form_fors", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_pages", force: :cascade do |t|
    t.string   "normal_search"
    t.integer  "petDog"
    t.integer  "age"
    t.text     "message"
    t.string   "password"
    t.integer  "parent_id"
    t.string   "user_name"
    t.date     "user_born_on"
    t.date     "user_graduation_day"
    t.date     "user_month_day"
    t.date     "user_week_day"
    t.string   "user_homepage"
    t.text     "user_address"
    t.string   "user_favt_color"
    t.date     "task_started_at"
    t.string   "product_price"
    t.string   "product_discount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "multipleselects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "select_tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upload_materials", force: :cascade do |t|
    t.binary   "picture",    limit: 20971520
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
