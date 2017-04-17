class RemoveColumnFromPlans < ActiveRecord::Migration[5.0]
  def change
    remove_column :plans, :recipe_ids, :string
  end
end
