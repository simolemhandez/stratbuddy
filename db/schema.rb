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

ActiveRecord::Schema.define(version: 2019_06_12_160749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "content"
    t.integer "votes", default: 0
    t.string "correctness"
    t.bigint "question_id"
    t.bigint "attempt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attempt_id"], name: "index_answers_on_attempt_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "attempts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "case_id"
    t.boolean "completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score", default: 0
    t.index ["case_id"], name: "index_attempts_on_case_id"
    t.index ["user_id"], name: "index_attempts_on_user_id"
  end

  create_table "cases", force: :cascade do |t|
    t.text "content"
    t.string "name"
    t.integer "day"
    t.string "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
    t.string "difficulty"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.string "followable_type", null: false
    t.bigint "followable_id", null: false
    t.string "follower_type", null: false
    t.bigint "follower_id", null: false
    t.boolean "blocked", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followable_id", "followable_type"], name: "fk_followables"
    t.index ["followable_type", "followable_id"], name: "index_follows_on_followable_type_and_followable_id"
    t.index ["follower_id", "follower_type"], name: "fk_follows"
    t.index ["follower_type", "follower_id"], name: "index_follows_on_follower_type_and_follower_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.integer "amount_cents", default: 0, null: false
    t.json "payment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.integer "timing"
    t.text "correction"
    t.string "skills"
    t.string "keywords", default: [], array: true
    t.bigint "case_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
    t.string "photo"
    t.index ["case_id"], name: "index_questions_on_case_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "interview_dates"
    t.integer "score", default: 0
    t.integer "progression_level"
    t.string "photo"
    t.integer "business_sense", default: 0
    t.integer "logic", default: 0
    t.integer "mathematics", default: 0
    t.integer "consumer_goods", default: 0
    t.integer "oil_and_gas", default: 0
    t.integer "manufacturing", default: 0
    t.integer "financial_services", default: 0
    t.integer "private_equity", default: 0
    t.integer "pharmaceuticals", default: 0
    t.integer "airline", default: 0
    t.integer "tmt", default: 0
    t.integer "non_profit", default: 0
    t.integer "public_sector", default: 0
    t.boolean "suscribed", default: false
    t.integer "price_cents", default: 9000, null: false
    t.integer "price_cents_bis", default: 5000, null: false
    t.string "promo", default: ""
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "attempts"
  add_foreign_key "answers", "questions"
  add_foreign_key "attempts", "cases"
  add_foreign_key "attempts", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "questions", "cases"
end
