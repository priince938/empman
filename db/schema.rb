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

ActiveRecord::Schema.define(version: 2021_01_11_124429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.time "timein"
    t.time "timeout"
    t.string "remark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_attendances_on_employee_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "domain_name"
    t.string "address"
    t.time "intime"
    t.time "outtime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "designations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_leaves", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "half"
    t.string "reason"
    t.bigint "request_employee_id"
    t.bigint "action_employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["action_employee_id"], name: "index_employee_leaves_on_action_employee_id"
    t.index ["request_employee_id"], name: "index_employee_leaves_on_request_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "dob"
    t.string "address"
    t.float "leaves"
    t.bigint "company_id"
    t.bigint "role_id"
    t.bigint "department_id"
    t.bigint "designation_id"
    t.bigint "manager_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["designation_id"], name: "index_employees_on_designation_id"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["manager_id"], name: "index_employees_on_manager_id"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_employees_on_role_id"
  end

  create_table "holidays", force: :cascade do |t|
    t.date "holiday_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "attendances", "employees"
  add_foreign_key "employee_leaves", "employees", column: "action_employee_id"
  add_foreign_key "employee_leaves", "employees", column: "request_employee_id"
  add_foreign_key "employees", "employees", column: "company_id"
  add_foreign_key "employees", "employees", column: "department_id"
  add_foreign_key "employees", "employees", column: "designation_id"
  add_foreign_key "employees", "employees", column: "manager_id"
  add_foreign_key "employees", "employees", column: "role_id"
end
