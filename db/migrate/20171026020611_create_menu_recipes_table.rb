class CreateMenuRecipesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_recipes_tables do |t|
      t.belongs_to :menu, index: true, foreign_key: true
      t.belongs_to :recipe, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
