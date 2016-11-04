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

ActiveRecord::Schema.define(version: 20161009134254) do

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "judo_class_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "judo_classes", force: true do |t|
    t.string   "belt_level"
    t.string   "class_name"
    t.string   "day"
    t.time     "time"
    t.string   "teacher_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.string   "match_name"
    t.boolean  "result"
    t.integer  "match_points"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "student_name"
    t.string   "email"
    t.date     "dob"
    t.string   "belt"
    t.boolean  "gender"
    t.string   "photo"
    t.integer  "score"
    t.integer  "judo_class_id"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
