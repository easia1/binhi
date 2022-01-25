# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_25_121120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "common_names", force: :cascade do |t|
    t.string "name"
    t.bigint "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_common_names_on_plant_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flower_colors", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flower_colors_plants", id: false, force: :cascade do |t|
    t.bigint "flower_color_id", null: false
    t.bigint "plant_id", null: false
  end

  create_table "foliage_colors", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foliage_colors_plants", id: false, force: :cascade do |t|
    t.bigint "foliage_color_id", null: false
    t.bigint "plant_id", null: false
  end

  create_table "genera", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.bigint "family_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["family_id"], name: "index_genera_on_family_id"
  end

  create_table "images", force: :cascade do |t|
    t.text "caption"
    t.text "source"
    t.string "file_path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "plant_id", null: false
    t.index ["plant_id"], name: "index_images_on_plant_id"
  end

  create_table "light_reqts", force: :cascade do |t|
    t.string "light_reqt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "light_reqts_plants", id: false, force: :cascade do |t|
    t.bigint "light_reqt_id", null: false
    t.bigint "plant_id", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "specific_epithet"
    t.string "grex"
    t.string "infraspecies_unit"
    t.string "infraspecies_name"
    t.string "cultivar_group"
    t.string "cultivar"
    t.string "hybrid"
    t.string "water_reqts"
    t.text "landscape_uses"
    t.bigint "genus_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.string "distribution"
    t.text "source"
    t.index ["genus_id"], name: "index_plants_on_genus_id"
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "synonyms", force: :cascade do |t|
    t.string "genus"
    t.string "specific_epithet"
    t.string "grex"
    t.string "infraspecies_unit"
    t.string "infraspecies_name"
    t.string "cultivar_group"
    t.string "cultivar"
    t.string "hybrid"
    t.bigint "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_synonyms_on_plant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "username"
    t.string "occupation"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "common_names", "plants"
  add_foreign_key "genera", "families"
  add_foreign_key "images", "plants"
  add_foreign_key "plants", "genera"
  add_foreign_key "plants", "users"
  add_foreign_key "synonyms", "plants"
end
