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

ActiveRecord::Schema.define(version: 20140308194726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_entries", force: true do |t|
    t.boolean  "seen"
    t.boolean  "own"
    t.boolean  "wishlist_see"
    t.boolean  "wishlist_own"
    t.integer  "user_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "user_comments"
    t.integer  "user_id"
    t.integer  "movie_id"
  end

  add_index "movie_entries", ["movie_id"], name: "index_movie_entries_on_movie_id", using: :btree
  add_index "movie_entries", ["user_id"], name: "index_movie_entries_on_user_id", using: :btree

  create_table "movies", force: true do |t|
    t.string   "title"
    t.string   "year"
    t.string   "rated"
    t.string   "released"
    t.string   "runtime"
    t.string   "genre"
    t.text     "director"
    t.text     "writer"
    t.text     "actors"
    t.text     "plot"
    t.text     "poster"
    t.integer  "tomato_meter"
    t.string   "tomato_image"
    t.integer  "tomato_user_meter"
    t.string   "dvd"
    t.string   "box_office"
    t.string   "production"
    t.integer  "tomato_reviews"
    t.integer  "tomato_fresh"
    t.integer  "tomato_rotten"
    t.string   "tomato_user_reviews"
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
