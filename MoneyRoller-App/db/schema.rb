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

ActiveRecord::Schema.define(version: 2019_04_08_142243) do

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "file_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rolloverinstitutions", force: :cascade do |t|
    t.integer "rollover_id"
    t.integer "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_rolloverinstitutions_on_institution_id"
    t.index ["rollover_id"], name: "index_rolloverinstitutions_on_rollover_id"
  end

  create_table "rollovers", force: :cascade do |t|
    t.string "rollover_type"
    t.string "origin_bank"
    t.string "destination_bank"
    t.string "amount"
    t.integer "user_id"
    t.integer "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

end
