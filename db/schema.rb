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

ActiveRecord::Schema.define(version: 2021_04_20_234552) do

  create_table "check_list_items", force: :cascade do |t|
    t.string "description"
    t.boolean "beggin_check"
    t.boolean "end_check"
    t.integer "check_list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["check_list_id"], name: "index_check_list_items_on_check_list_id"
  end

  create_table "check_lists", force: :cascade do |t|
    t.string "title"
    t.integer "beggin_km"
    t.integer "end_km"
    t.integer "user_id", null: false
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vehicle_id", null: false
    t.index ["user_id"], name: "index_check_lists_on_user_id"
    t.index ["vehicle_id"], name: "index_check_lists_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vtr_number"
    t.string "kind"
    t.boolean "active"
    t.string "licence_plate"
    t.string "brand"
    t.string "model"
    t.string "owner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "check_list_items", "check_lists"
  add_foreign_key "check_lists", "users"
  add_foreign_key "check_lists", "vehicles"
end
