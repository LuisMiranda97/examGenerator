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

ActiveRecord::Schema.define(version: 20181031020656) do

  create_table "dynamics", force: :cascade do |t|
    t.string "text"
    t.string "formula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "topic_id"
    t.index ["topic_id"], name: "index_dynamics_on_topic_id"
  end

  create_table "exam_topics", force: :cascade do |t|
    t.integer "exam_id"
    t.integer "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_exam_topics_on_exam_id"
    t.index ["topic_id"], name: "index_exam_topics_on_topic_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "name_exam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.boolean "isAnswer"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dynamic_id"
    t.integer "static_id"
    t.index ["dynamic_id"], name: "index_options_on_dynamic_id"
    t.index ["static_id"], name: "index_options_on_static_id"
  end

  create_table "statics", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "topic_id"
    t.index ["topic_id"], name: "index_statics_on_topic_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name_subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "name_topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_topics_on_subject_id"
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
    t.string "name_variable"
    t.decimal "minimum"
    t.decimal "maximum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dynamic_id"
    t.index ["dynamic_id"], name: "index_variables_on_dynamic_id"
  end

end
