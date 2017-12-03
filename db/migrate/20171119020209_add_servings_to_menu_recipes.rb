class AddServingsToMenuRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :menu_recipes, :servings, :float
  end
end
