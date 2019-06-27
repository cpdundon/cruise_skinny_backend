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

ActiveRecord::Schema.define(version: 2019_06_27_012906) do

  create_table "skinnies", force: :cascade do |t|
    t.text "skinny_id"
    t.text "thought"
    t.integer "vessel_id"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skinny_id"], name: "index_skinnies_on_skinny_id", unique: true
  end

  create_table "vessels", force: :cascade do |t|
    t.text "vessel_id"
    t.text "name"
    t.text "operator"
    t.boolean "active"
    t.date "splash_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vessel_id"], name: "index_vessels_on_vessel_id", unique: true
  end

end
