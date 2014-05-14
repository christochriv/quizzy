# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140416111327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers_sets", force: true do |t|
    t.integer  "question_id"
    t.string   "answer1"
    t.string   "answer2"
    t.string   "answer3"
    t.string   "good_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenge_steps", force: true do |t|
    t.integer  "challenge_id"
    t.integer  "question_id"
    t.integer  "answerer_id"
    t.text     "chosen_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "challenge_steps", ["answerer_id"], name: "index_challenge_steps_on_answerer_id", using: :btree
  add_index "challenge_steps", ["challenge_id"], name: "index_challenge_steps_on_challenge_id", using: :btree
  add_index "challenge_steps", ["question_id"], name: "index_challenge_steps_on_question_id", using: :btree

  create_table "challenges", force: true do |t|
    t.integer  "champion_id"
    t.string   "invite_key"
    t.integer  "score",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "challenges", ["champion_id"], name: "index_challenges_on_champion_id", using: :btree

  create_table "questions", force: true do |t|
    t.string   "query"
    t.text     "explication"
    t.text     "source_url"
    t.integer  "difficulty"
    t.string   "category"
    t.integer  "week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.string   "image"
    t.string   "city"
    t.string   "gender"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
