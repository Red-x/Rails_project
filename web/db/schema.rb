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

ActiveRecord::Schema.define(version: 20160221130736) do

  create_table "comments", force: :cascade do |t|
    t.string   "content",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "resume_id"
    t.integer  "slide_id"
  end

  add_index "comments", ["resume_id"], name: "index_comments_on_resume_id"
  add_index "comments", ["slide_id"], name: "index_comments_on_slide_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "lectures", id: false, force: :cascade do |t|
    t.integer  "id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lectures", ["id"], name: "index_lectures_on_id"

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "slide_id"
    t.integer  "user_id"
    t.integer  "resume_id"
  end

  add_index "likes", ["resume_id"], name: "index_likes_on_resume_id"
  add_index "likes", ["slide_id"], name: "index_likes_on_slide_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "resumes", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "resumes", ["user_id"], name: "index_resumes_on_user_id"

  create_table "slides", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "attachemnet"
    t.integer  "resume_id"
  end

  add_index "slides", ["resume_id"], name: "index_slides_on_resume_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
