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

ActiveRecord::Schema[7.1].define(version: 2024_07_10_042557) do
  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "food_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foodlogs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "todo_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_foodlogs_on_category_id"
    t.index ["todo_id"], name: "index_foodlogs_on_todo_id"
    t.index ["user_id"], name: "index_foodlogs_on_user_id"
  end

  create_table "inventories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "food_counts"
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_inventories_on_category_id"
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "profiles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "icon"
    t.integer "gender"
    t.text "bio"
    t.integer "departed"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "tasklists", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tasklists_on_user_id"
  end

  create_table "tasks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "contents"
    t.integer "completed", default: 0, null: false
    t.boolean "open", default: false, null: false
    t.bigint "tasklist_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_tasks_on_category_id"
    t.index ["tasklist_id"], name: "index_tasks_on_tasklist_id"
  end

  create_table "taskschedules", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "start_at", null: false
    t.datetime "actual_start_at"
    t.datetime "end_at", null: false
    t.datetime "actual_end_at"
    t.bigint "task_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_taskschedules_on_task_id"
  end

  create_table "todos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.integer "friendship"
    t.integer "hungry"
    t.boolean "depart"
    t.bigint "user_id", null: false
    t.integer "tasklist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_todos_on_user_id"
  end

  create_table "todotalks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "contents", null: false
    t.integer "talk_group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "foodlogs", "categories"
  add_foreign_key "foodlogs", "todos"
  add_foreign_key "foodlogs", "users"
  add_foreign_key "inventories", "categories"
  add_foreign_key "inventories", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "tasklists", "users"
  add_foreign_key "tasks", "categories"
  add_foreign_key "tasks", "tasklists"
  add_foreign_key "taskschedules", "tasks"
  add_foreign_key "todos", "users"
end
