class AddFieldsToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipes, :user, foreign_key: true
    add_column :recipes, :instructions, :text
  end
end
