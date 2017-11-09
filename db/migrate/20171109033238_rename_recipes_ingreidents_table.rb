class RenameRecipesIngreidentsTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :recipe_ingredients_tables, :recipe_ingredients
  end
end
