# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150901104319) do

  create_table "experiences", force: true do |t|
    t.string   "company"
    t.date     "period_of_employment"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "profile_id"
    t.date     "end_date"
    t.string   "uploads"
    t.string   "contact_no"
    t.string   "website"
  end

  add_index "experiences", ["profile_id"], name: "index_experiences_on_profile_id"
  add_index "experiences", ["user_id"], name: "index_experiences_on_user_id"

  create_table "months", force: true do |t|
    t.string   "month_range"
    t.string   "phase"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "report_file_name"
    t.string   "report_content_type"
    t.integer  "report_file_size"
    t.datetime "report_updated_at"
    t.integer  "project_id"
  end

  add_index "months", ["project_id"], name: "index_months_on_project_id"

  create_table "pictures", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "project_id"
  end

  add_index "pictures", ["project_id"], name: "index_pictures_on_project_id"

  create_table "profiles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "name"
    t.string   "civil"
    t.date     "date_of_employment"
    t.string   "mobile"
    t.string   "work_email"
    t.string   "personal_email"
    t.string   "internal_no"
    t.boolean  "nationality",        limit: 255
    t.boolean  "gender",             limit: 255
    t.string   "academic_degree"
    t.string   "major"
    t.string   "work_experience"
    t.string   "folder"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "status"
    t.string   "phase"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contractor"
    t.string   "designer"
    t.string   "area"
    t.string   "budget"
    t.date     "project_start"
    t.string   "construction_period"
    t.date     "expected_date"
    t.string   "client"
    t.string   "collaborator"
    t.string   "structural"
    t.string   "quantity"
    t.string   "m_e_engineer"
    t.integer  "picture_id"
    t.string   "design_cost"
    t.string   "execution_cost"
    t.date     "signature_date"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "team_id"
  end

  add_index "projects", ["picture_id"], name: "index_projects_on_picture_id"
  add_index "projects", ["team_id"], name: "index_projects_on_team_id"

  create_table "teams", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "member"
    t.string   "role"
  end

  add_index "teams", ["project_id"], name: "index_teams_on_project_id"
  add_index "teams", ["user_id"], name: "index_teams_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "employee_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vacations", force: true do |t|
    t.string   "kind"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "vacations", ["user_id"], name: "index_vacations_on_user_id"

end
