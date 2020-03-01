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

ActiveRecord::Schema.define(version: 2020_03_01_050750) do

  create_table "chores", force: :cascade do |t|
    t.string "chore_type"
    t.integer "user_id"
    t.integer "task_id"
    t.index ["task_id"], name: "index_chores_on_task_id"
    t.index ["user_id"], name: "index_chores_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.boolean "completed"
    t.datetime "date_completed"
    t.string "task_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "chore_id"
    t.index ["chore_id"], name: "index_tasks_on_chore_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'inet' for column 'current_sign_in_ip'

end
