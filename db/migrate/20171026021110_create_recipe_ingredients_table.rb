class CreateRecipeIngredientsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients_tables do |t|
      t.belongs_to :recipe, index: true, foreign_key: true
      t.belongs_to :ingredient, index: true, foreign_key: true
      t.float :quantity
      t.timestamps null: false
    end
  end
end
