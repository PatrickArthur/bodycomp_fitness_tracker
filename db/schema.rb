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

ActiveRecord::Schema.define(version: 20160519174423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "body_inputs", force: :cascade do |t|
    t.integer  "user_id",     default: 0,  null: false
    t.string   "body_inputs", default: "", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "body_inputs", ["user_id"], name: "index_body_inputs_on_user_id", unique: true, using: :btree

  create_table "exercises", force: :cascade do |t|
    t.string "level",     default: "", null: false
    t.string "exercise",  default: "", null: false
    t.string "body_part", default: "", null: false
  end

  create_table "lift_metrics", force: :cascade do |t|
    t.integer  "user_id",     default: 0,  null: false
    t.string   "lift_inputs", default: "", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "lift_metrics", ["user_id"], name: "index_lift_metrics_on_user_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name", default: "", null: false
    t.string   "last_name",  default: "", null: false
    t.string   "email",      default: "", null: false
    t.string   "role",       default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "users_workouts", id: false, force: :cascade do |t|
    t.integer "workout_id", null: false
    t.integer "user_id",    null: false
  end

  add_index "users_workouts", ["user_id", "workout_id"], name: "index_users_workouts_on_user_id_and_workout_id", using: :btree
  add_index "users_workouts", ["workout_id", "user_id"], name: "index_users_workouts_on_workout_id_and_user_id", using: :btree

  create_table "workouts", force: :cascade do |t|
    t.string   "level",          default: "", null: false
    t.string   "weekly_workout", default: "", null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
