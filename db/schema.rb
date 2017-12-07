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

ActiveRecord::Schema.define(version: 20171207001357) do

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
  end

  create_table "menu_recipes", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "servings"
    t.index ["menu_id"], name: "index_menu_recipes_on_menu_id", using: :btree
    t.index ["recipe_id"], name: "index_menu_recipes_on_recipe_id", using: :btree
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
    t.string   "name"
    t.index ["user_id"], name: "index_menus_on_user_id", using: :btree
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.float    "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id", using: :btree
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id", using: :btree
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

  add_foreign_key "menu_recipes", "menus"
  add_foreign_key "menu_recipes", "recipes"
  add_foreign_key "menus", "users"
  add_foreign_key "recipe_ingredients", "ingredients"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "recipes", "users"
  add_foreign_key "reviews", "users"
end
