class RenameRecipesIngredients < ActiveRecord::Migration[5.0]
  def change
    rename_table :recipes_ingredients, :instructions
  end
end
