class AddFieldsToIngredient < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :generic_name, :string
    add_column :ingredients, :quantity, :integer
    add_column :ingredients, :unit, :string
    add_column :ingredients, :substitution, :string
    add_column :ingredients, :source, :string
    add_column :ingredients, :category, :string
    add_column :ingredients, :warning, :string
  end
end
