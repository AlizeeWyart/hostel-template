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

ActiveRecord::Schema.define(version: 20170103174800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "article_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["article_id"], name: "index_article_categories_on_article_id", using: :btree
    t.index ["category_id"], name: "index_article_categories_on_category_id", using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.date     "date"
    t.string   "short_description"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "title"
    t.index ["user_id"], name: "index_articles_on_user_id", using: :btree
  end

  create_table "booking_reductions", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "reduction_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["booking_id"], name: "index_booking_reductions_on_booking_id", using: :btree
    t.index ["reduction_id"], name: "index_booking_reductions_on_reduction_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "date"
    t.time     "arrival_hour"
    t.time     "departure_hour"
    t.integer  "room_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.decimal  "final_price"
    t.string   "total_reduction"
    t.index ["room_id"], name: "index_bookings_on_room_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "icon_html"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string   "name"
    t.string   "short_description"
    t.string   "fontawesome"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "hostels", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "short_description"
    t.text     "description"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "reductions", force: :cascade do |t|
    t.string   "code"
    t.decimal  "percentage"
    t.decimal  "money_reduc"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "short_description"
    t.text     "description"
    t.integer  "hostel_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["hostel_id"], name: "index_restaurants_on_hostel_id", using: :btree
  end

  create_table "room_facilities", force: :cascade do |t|
    t.boolean  "shown"
    t.integer  "facility_id"
    t.integer  "room_id"
    t.string   "short_description"
    t.string   "fontawesome"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["facility_id"], name: "index_room_facilities_on_facility_id", using: :btree
    t.index ["room_id"], name: "index_room_facilities_on_room_id", using: :btree
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.text     "short_description"
    t.text     "amenities"
    t.boolean  "shown"
    t.decimal  "low_season_week_price"
    t.decimal  "hot_season_wkd_price"
    t.decimal  "hot_season_week_price"
    t.decimal  "low_season_wkd_price"
    t.integer  "hostel_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["hostel_id"], name: "index_rooms_on_hostel_id", using: :btree
  end

  create_table "specific_prices", force: :cascade do |t|
    t.decimal  "price"
    t.integer  "room_id"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_specific_prices_on_room_id", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.boolean  "employee",               default: false
    t.boolean  "customer",               default: false
    t.boolean  "visitor",                default: true
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.string   "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "article_categories", "articles"
  add_foreign_key "article_categories", "categories"
  add_foreign_key "articles", "users"
  add_foreign_key "booking_reductions", "bookings"
  add_foreign_key "booking_reductions", "reductions"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "bookings", "users"
  add_foreign_key "restaurants", "hostels"
  add_foreign_key "room_facilities", "facilities"
  add_foreign_key "room_facilities", "rooms"
  add_foreign_key "rooms", "hostels"
  add_foreign_key "specific_prices", "rooms"
end
