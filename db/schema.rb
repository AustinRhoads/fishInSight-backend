# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_16_200030) do

  create_table "baits", force: :cascade do |t|
    t.string "name"
    t.integer "efficacy_rating"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "catches", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "species_id", null: false
    t.integer "spot_id", null: false
    t.integer "bait_id", null: false
    t.integer "size"
    t.string "location"
    t.datetime "date"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bait_id"], name: "index_catches_on_bait_id"
    t.index ["species_id"], name: "index_catches_on_species_id"
    t.index ["spot_id"], name: "index_catches_on_spot_id"
    t.index ["user_id"], name: "index_catches_on_user_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "scientific_name"
    t.text "description"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spots", force: :cascade do |t|
    t.string "name"
    t.integer "latitude"
    t.integer "longitude"
    t.string "location"
    t.integer "water_body_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "catches", "species"
  add_foreign_key "catches", "users"
end
