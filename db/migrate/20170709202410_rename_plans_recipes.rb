class RenamePlansRecipes < ActiveRecord::Migration[5.0]
  def change
    rename_table :plans_recipes, :courses
  end
end
