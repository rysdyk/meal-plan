class AddColumnToPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :recipe_ids, :string
  end
end
