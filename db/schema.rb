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

ActiveRecord::Schema[7.2].define(version: 2024_10_02_013051) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affirmations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "affirmation", null: false
    t.string "tag", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_affirmations_on_user_id"
  end

  create_table "goal_updates", force: :cascade do |t|
    t.bigint "goal_id", null: false
    t.text "progress_update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_id"], name: "index_goal_updates_on_goal_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "tag", null: false
    t.date "completion_date", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "journal_entries", force: :cascade do |t|
    t.string "title", null: false
    t.text "journal_text", null: false
    t.string "tag", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_journal_entries_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "content_type", null: false
    t.integer "content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "notebooks", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notebooks_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "notebook_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notebook_id"], name: "index_notes_on_notebook_id"
  end

  create_table "todos", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.date "due_date", null: false
    t.date "complete_date"
    t.boolean "auto_repeat", default: false
    t.integer "priority", default: 0
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_todos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.string "token", null: false
    t.string "refresh_token"
    t.string "provider"
    t.string "uid", null: false
    t.datetime "last_login_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["uid"], name: "index_users_on_uid"
  end

  add_foreign_key "affirmations", "users"
  add_foreign_key "goal_updates", "goals"
  add_foreign_key "goals", "users"
  add_foreign_key "journal_entries", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "notebooks", "users"
  add_foreign_key "notes", "notebooks"
  add_foreign_key "todos", "users"
end
