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

ActiveRecord::Schema[7.0].define(version: 2022_08_19_230738) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "date_time", null: false
    t.string "reason", null: false
    t.string "status", null: false
    t.string "payment_status", null: false
    t.integer "score"
    t.string "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id", null: false
    t.bigint "user_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "deleted_at"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["service_id"], name: "index_appointments_on_service_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "cards", force: :cascade do |t|
    t.date "next_appointment"
    t.float "weight"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id", null: false
    t.bigint "diet_id"
    t.bigint "appointment_id", null: false
    t.index ["appointment_id"], name: "index_cards_on_appointment_id"
    t.index ["diet_id"], name: "index_cards_on_diet_id"
    t.index ["patient_id"], name: "index_cards_on_patient_id"
  end

  create_table "diets", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "licenses", force: :cascade do |t|
    t.string "name", null: false
    t.string "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_licenses_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name", null: false
    t.string "second_name"
    t.string "last_name", null: false
    t.string "second_last_name"
    t.date "birth_date", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.string "password"
    t.float "height", null: false
    t.string "observations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "deleted_at"
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "schedules", force: :cascade do |t|
    t.string "week_day", null: false
    t.time "opening_time", null: false
    t.time "closing_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "services", force: :cascade do |t|
    t.string "name", null: false
    t.string "duration", null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "slots", force: :cascade do |t|
    t.string "service", default: "available"
    t.string "professional", default: "available"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "available"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "turns", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "schedule_id", null: false
    t.bigint "user_id", null: false
    t.index ["schedule_id"], name: "index_turns_on_schedule_id"
    t.index ["user_id"], name: "index_turns_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name", null: false
    t.date "birth_date", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.string "password"
    t.string "role", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "speciality_id", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "deleted_at"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["speciality_id"], name: "index_users_on_speciality_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "services"
  add_foreign_key "appointments", "users"
  add_foreign_key "cards", "appointments"
  add_foreign_key "cards", "diets"
  add_foreign_key "cards", "patients"
  add_foreign_key "licenses", "users"
  add_foreign_key "turns", "schedules"
  add_foreign_key "turns", "users"
  add_foreign_key "users", "specialities"
end
