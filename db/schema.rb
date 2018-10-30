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

ActiveRecord::Schema.define(version: 2018_10_29_020245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string "foot_post"
    t.string "sector_A"
    t.string "sector_B"
    t.string "sector_C"
    t.string "sector_D"
    t.string "station_house_clerk"
    t.string "station_hourse_security"
    t.string "telephone_switchboard_operator"
    t.string "hospitalized_prisoner"
    t.string "DOA"
    t.string "prisoner_clerk"
    t.string "EDP"
    t.string "crime_scene"
    t.string "special_post_A"
    t.string "special_post_B"
    t.string "special_post_C"
    t.string "holiday_post_A"
    t.string "holiday_post_B"
    t.string "holiday_post_C"
    t.string "desk_officer"
    t.string "patrol_supervisor_1"
    t.string "patrol_supervisor_2"
    t.string "special_operations_supervisor"
    t.string "commanding_officer"
    t.string "executive_officer"
    t.string "integrity_control_officer"
    t.string "community_affairs_supervisor"
    t.string "community_affairs_officer"
    t.string "domestic_violence_officer"
    t.string "street_crime_suppression_supervisor"
    t.string "street_crime_suppression_officer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "roll_call_id"
    t.index ["roll_call_id"], name: "index_assignments_on_roll_call_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "radio"
    t.string "rmp"
    t.string "van"
    t.string "wagon"
    t.string "scooter"
    t.string "taser"
    t.string "shield_long"
    t.string "mace"
    t.string "memo_book"
    t.string "flares"
    t.string "traffic_cone"
    t.string "traffic_vest"
    t.string "crime_scene_tape"
    t.string "property_jewelry_tag"
    t.string "property_security_tag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "roll_call_id"
    t.index ["roll_call_id"], name: "index_equipment_on_roll_call_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.string "police_officer"
    t.string "sergeant"
    t.string "lieutenant"
    t.string "captain"
    t.string "detective_1"
    t.string "detective_2"
    t.string "detective_3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "resources_id"
    t.index ["resources_id"], name: "index_ranks_on_resources_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.bigint "tax_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "rank_id"
    t.index ["rank_id"], name: "index_resources_on_rank_id"
  end

  create_table "roll_calls", force: :cascade do |t|
    t.string "meal_period"
    t.string "rings"
    t.string "eot_sign_out"
    t.string "roll_call_final"
    t.string "color_of_the_day"
    t.date "c_summons_return_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "resource_id"
    t.bigint "assignment_id"
    t.bigint "equipment_id"
    t.bigint "tour_id"
    t.index ["assignment_id"], name: "index_roll_calls_on_assignment_id"
    t.index ["equipment_id"], name: "index_roll_calls_on_equipment_id"
    t.index ["resource_id"], name: "index_roll_calls_on_resource_id"
    t.index ["tour_id"], name: "index_roll_calls_on_tour_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "tour"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "roll_call_id"
    t.index ["roll_call_id"], name: "index_tours_on_roll_call_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
