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

ActiveRecord::Schema[7.1].define(version: 2024_06_07_022841) do
  create_table "details", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "product_id"
    t.string "order_id"
    t.string "user_name"
    t.string "product_name"
    t.float "order_money"
    t.integer "order_status"
    t.date "order_date"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "order_id"
    t.string "user_name"
    t.string "product_id"
    t.string "product_name"
    t.string "route"
    t.string "formulate"
    t.date "travel_time"
    t.string "departure_city"
    t.string "tourism_cycle"
    t.float "order_money"
    t.integer "order_status"
    t.date "order_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_name"
    t.date "order_date"
    t.integer "order_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "order_total"
    t.float "total_money"
  end

  create_table "tbl_productinfos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "product_id"
    t.string "route"
    t.string "formulate"
    t.string "productname"
    t.date "travel_time"
    t.string "departure_city"
    t.string "tourism_cycle"
    t.integer "age_min"
    t.integer "age_max"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
