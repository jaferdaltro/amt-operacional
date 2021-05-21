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

ActiveRecord::Schema.define(version: 2021_05_21_130025) do

  create_table "cars", force: :cascade do |t|
    t.string "owner", limit: 35
    t.string "licence_plate", limit: 8
    t.string "vtr", limit: 7
    t.string "brand", limit: 35
    t.string "model", limit: 35
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mileage", default: 0
    t.boolean "busy", default: false
    t.integer "status", default: 0
    t.integer "kind", default: 0
    t.integer "fuel", default: 0
    t.integer "operation", default: 0
  end

  create_table "clocks", force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "start_at"
    t.datetime "end_at"
    t.boolean "active", default: false
    t.index ["service_id"], name: "index_clocks_on_service_id"
    t.index ["user_id"], name: "index_clocks_on_user_id"
  end

  create_table "frequencies", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "login_time"
    t.datetime "logout_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_frequencies_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "description"
    t.boolean "ready"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "car_id"
    t.datetime "ready_at"
    t.text "obeservation", limit: 50
    t.index ["car_id"], name: "index_items_on_car_id"
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.boolean "admin", default: false
    t.string "registration"
    t.integer "score", default: 0
    t.boolean "agent", default: false
    t.boolean "supervisor", default: false
    t.string "alias"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "clocks", "services"
  add_foreign_key "clocks", "users"
  add_foreign_key "frequencies", "users"
  add_foreign_key "items", "cars"
  add_foreign_key "services", "users"
end
