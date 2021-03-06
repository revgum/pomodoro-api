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

ActiveRecord::Schema.define(version: 2018_05_09_205911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pauses", force: :cascade do |t|
    t.integer "seconds"
    t.string "description"
    t.bigint "pomodoro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pomodoro_id"], name: "index_pauses_on_pomodoro_id"
  end

  create_table "pomodoros", force: :cascade do |t|
    t.boolean "isPaused"
    t.boolean "isStarted"
    t.integer "minutes"
    t.integer "pausedElapsed"
    t.integer "seconds"
    t.integer "secondsElapsed"
    t.integer "secondsRemaining"
    t.integer "timer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pauses", "pomodoros"
end
