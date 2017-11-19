class RenameMenuRecipesTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :menu_recipes_tables, :menu_recipes
  end
end
