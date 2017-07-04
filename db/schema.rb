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

ActiveRecord::Schema.define(version: 20170704223543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "generic_name"
    t.integer  "quantity"
    t.string   "unit"
    t.string   "substitution"
    t.string   "source"
    t.string   "category"
    t.string   "warning"
    t.integer  "recipe_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree
  end

  create_table "menus", force: :cascade do |t|
    t.integer  "total_meals"
    t.integer  "total_servings"
    t.decimal  "cost"
    t.text     "notes"
    t.integer  "user_id"
    t.date     "start_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_menus_on_user_id", using: :btree
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_plans_on_user_id", using: :btree
  end

  create_table "plans_recipes", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_plans_recipes_on_plan_id", using: :btree
    t.index ["recipe_id"], name: "index_plans_recipes_on_recipe_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "servings"
    t.integer  "calories"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.decimal  "cost"
    t.integer  "user_id"
    t.text     "instructions"
    t.index ["user_id"], name: "index_recipes_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "review"
    t.integer  "reviewable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.string   "reviewable_type"
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "ingredients", "recipes"
  add_foreign_key "menus", "users"
  add_foreign_key "plans", "users"
  add_foreign_key "recipes", "users"
  add_foreign_key "reviews", "users"
end
