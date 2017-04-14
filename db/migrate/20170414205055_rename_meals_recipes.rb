class RenameMealsRecipes < ActiveRecord::Migration[5.0]
  def change
    rename_table :meals_recipes, :meals
  end
end
