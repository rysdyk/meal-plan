class RenameMeals < ActiveRecord::Migration[5.0]
  def change
    rename_table :meals, :plans
  end
end
