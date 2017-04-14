class CreateRecipesIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes_ingredients do |t|
      t.references :recipes, foreign_key: true
      t.references :ingredients, foreign_key: true

      t.timestamps
    end
  end
end
