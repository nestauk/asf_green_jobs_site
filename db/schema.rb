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

ActiveRecord::Schema[7.1].define(version: 2023_11_10_140150) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.string "sic_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "occupation_id", null: false
    t.bigint "region_id", null: false
    t.decimal "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["occupation_id"], name: "index_locations_on_occupation_id"
    t.index ["region_id"], name: "index_locations_on_region_id"
  end

  create_table "occupations", force: :cascade do |t|
    t.string "name"
    t.integer "num_job_ads"
    t.decimal "avg_num_skills"
    t.decimal "prop_green_skills"
    t.decimal "green_timeshare"
    t.jsonb "green_topics_list", default: []
    t.jsonb "top_green_skills", default: []
    t.jsonb "top_not_green_skills", default: []
    t.string "green_overall_rating"
    t.string "green_occupation_rating"
    t.string "green_skills_rating"
    t.string "green_industry_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "median_min_annualised_salary"
    t.integer "median_max_annualised_salary"
    t.decimal "average_ind_perunit_ghg"
    t.decimal "average_ind_prop_hours"
    t.decimal "average_ind_prop_workers"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "segments", force: :cascade do |t|
    t.bigint "industry_id", null: false
    t.bigint "occupation_id", null: false
    t.integer "count"
    t.decimal "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_id"], name: "index_segments_on_industry_id"
    t.index ["occupation_id"], name: "index_segments_on_occupation_id"
  end

  add_foreign_key "locations", "occupations"
  add_foreign_key "locations", "regions"
  add_foreign_key "segments", "industries"
  add_foreign_key "segments", "occupations"
end
