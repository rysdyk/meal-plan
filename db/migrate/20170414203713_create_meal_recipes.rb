class CreateMealRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_recipes do |t|

      t.timestamps
    end
  end
end
