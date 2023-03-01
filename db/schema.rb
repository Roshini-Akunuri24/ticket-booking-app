# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_01_101711) do
  create_table "admin_users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "name"
    t.integer "phone_number"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "booked_tickets", force: :cascade do |t|
    t.integer "movie_ticket_id"
    t.integer "show_id"
    t.decimal "price_per_ticket"
    t.integer "number_of_tickets"
    t.integer "user_id"
    t.integer "seat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "movie_tickets", force: :cascade do |t|
    t.string "movie_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.date "date"
    t.integer "location_id"
    t.integer "show_id"
    t.integer "theatre_id"
    t.index ["location_id"], name: "index_movie_tickets_on_location_id"
    t.index ["show_id"], name: "index_movie_tickets_on_show_id"
    t.index ["theatre_id"], name: "index_movie_tickets_on_theatre_id"
  end

  create_table "seats", force: :cascade do |t|
    t.integer "number"
    t.boolean "booked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "movie_ticket_id"
    t.decimal "price"
  end

  create_table "shows", force: :cascade do |t|
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "super_users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theatres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "company"
    t.string "departure"
    t.string "from"
    t.string "to"
    t.integer "num_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "movie_tickets", "locations"
  add_foreign_key "movie_tickets", "shows"
  add_foreign_key "movie_tickets", "theatres"
end
