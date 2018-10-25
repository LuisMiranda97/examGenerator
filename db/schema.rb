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

ActiveRecord::Schema.define(version: 20181025185430) do

  create_table "dynamics", force: :cascade do |t|
    t.integer "id_dynamic"
    t.integer "id_topic"
    t.string "text"
    t.integer "id_variable"
    t.integer "id_option"
    t.string "formula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.integer "id_exam"
    t.integer "id_subject"
    t.string "name_exam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.integer "id_option"
    t.integer "id_static"
    t.boolean "isAnswer"
    t.string "answer"
    t.integer "id_dynamic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statics", force: :cascade do |t|
    t.integer "id_static"
    t.integer "id_topic"
    t.string "text"
    t.integer "id_option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "id_subject"
    t.string "name_subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.integer "id_topic"
    t.integer "id_subject"
    t.string "name_topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variables", force: :cascade do |t|
    t.integer "id_variable"
    t.string "name_variable"
    t.decimal "minimum"
    t.decimal "maximum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_dynamic"
  end

end
