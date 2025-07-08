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

ActiveRecord::Schema[8.0].define(version: 2025_07_08_204312) do
  create_table "animal_medicines", force: :cascade do |t|
    t.integer "animal_id", null: false
    t.integer "medicine_id", null: false
    t.integer "recommended_num_of_units"
    t.index ["animal_id"], name: "index_animal_medicines_on_animal_id"
    t.index ["medicine_id"], name: "index_animal_medicines_on_medicine_id"
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
  end

  create_table "dosages", force: :cascade do |t|
    t.integer "visit_id", null: false
    t.integer "medicine_id", null: false
    t.integer "units_given"
    t.float "discount", default: 0.0
    t.index ["medicine_id"], name: "index_dosages_on_medicine_id"
    t.index ["visit_id"], name: "index_dosages_on_visit_id"
  end

  create_table "medicine_costs", force: :cascade do |t|
    t.integer "medicine_id", null: false
    t.integer "cost_per_unit"
    t.date "start_date"
    t.date "end_date"
    t.index ["medicine_id"], name: "index_medicine_costs_on_medicine_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "stock_amount"
    t.integer "admin_method"
    t.string "unit"
    t.boolean "vaccine"
    t.boolean "active", default: true
  end

  create_table "owners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.integer "user_id", null: false
    t.boolean "active", default: true
    t.index ["user_id"], name: "index_owners_on_user_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "animal_id", null: false
    t.integer "owner_id", null: false
    t.boolean "female"
    t.date "date_of_birth"
    t.boolean "active", default: true
    t.index ["animal_id"], name: "index_pets_on_animal_id"
    t.index ["owner_id"], name: "index_pets_on_owner_id"
  end

  create_table "procedure_costs", force: :cascade do |t|
    t.integer "procedure_id", null: false
    t.integer "cost"
    t.date "start_date"
    t.date "end_date"
    t.index ["procedure_id"], name: "index_procedure_costs_on_procedure_id"
  end

  create_table "procedures", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "length_of_time"
    t.boolean "active", default: true
  end

  create_table "treatments", force: :cascade do |t|
    t.integer "procedure_id", null: false
    t.integer "visit_id", null: false
    t.boolean "successful"
    t.float "discount", default: 0.0
    t.index ["procedure_id"], name: "index_treatments_on_procedure_id"
    t.index ["visit_id"], name: "index_treatments_on_visit_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "role"
    t.string "username"
    t.string "password_digest"
    t.boolean "active", default: true
  end

  create_table "visits", force: :cascade do |t|
    t.integer "pet_id", null: false
    t.date "date"
    t.float "weight"
    t.boolean "overnight_stay"
    t.integer "total_charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_visits_on_pet_id"
  end

  add_foreign_key "animal_medicines", "animals"
  add_foreign_key "animal_medicines", "medicines"
  add_foreign_key "dosages", "medicines"
  add_foreign_key "dosages", "visits"
  add_foreign_key "medicine_costs", "medicines"
  add_foreign_key "owners", "users"
  add_foreign_key "pets", "animals"
  add_foreign_key "pets", "owners"
  add_foreign_key "procedure_costs", "procedures"
  add_foreign_key "treatments", "procedures"
  add_foreign_key "treatments", "visits"
  add_foreign_key "visits", "pets"
end
