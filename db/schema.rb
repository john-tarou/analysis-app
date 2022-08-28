# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_28_065512) do

  create_table "career_anchors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "question_1", null: false
    t.integer "question_2", null: false
    t.integer "question_3", null: false
    t.integer "question_4", null: false
    t.integer "question_5", null: false
    t.integer "question_6", null: false
    t.integer "question_7", null: false
    t.integer "question_8", null: false
    t.integer "question_9", null: false
    t.integer "question_10", null: false
    t.integer "question_11", null: false
    t.integer "question_12", null: false
    t.integer "question_13", null: false
    t.integer "question_14", null: false
    t.integer "question_15", null: false
    t.integer "question_16", null: false
    t.integer "question_17", null: false
    t.integer "question_18", null: false
    t.integer "question_19", null: false
    t.integer "question_20", null: false
    t.integer "question_21", null: false
    t.integer "question_22", null: false
    t.integer "question_23", null: false
    t.integer "question_24", null: false
    t.integer "question_25", null: false
    t.integer "question_26", null: false
    t.integer "question_27", null: false
    t.integer "question_28", null: false
    t.integer "question_29", null: false
    t.integer "question_30", null: false
    t.integer "question_31", null: false
    t.integer "question_32", null: false
    t.integer "question_33", null: false
    t.integer "question_34", null: false
    t.integer "question_35", null: false
    t.integer "question_36", null: false
    t.integer "question_37", null: false
    t.integer "question_38", null: false
    t.integer "question_39", null: false
    t.integer "question_40", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_career_anchors_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "company_name", null: false
    t.string "position", null: false
    t.string "occupation", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "career_anchors", "users"
end
