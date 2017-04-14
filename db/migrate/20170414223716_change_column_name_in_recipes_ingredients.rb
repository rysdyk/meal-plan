class ChangeColumnNameInRecipesIngredients < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes_ingredients, :recipes_id, :recipe_id
    rename_column :recipes_ingredients, :ingredients_id, :ingredient_id
  end
end
