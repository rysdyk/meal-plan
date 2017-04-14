class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.integer :servings
      t.integer :calories

      t.timestamps
    end
  end
end
