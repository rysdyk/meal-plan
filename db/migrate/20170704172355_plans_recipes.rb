class PlansRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :plans_recipes do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :plan, index: true
      t.timestamps
    end
  end
end
