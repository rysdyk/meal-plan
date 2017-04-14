class AddForeignKeyToSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :recipe_id, :integer
    add_foreign_key :steps, :recipes
  end
end
