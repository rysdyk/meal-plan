class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :meals, :recipes do |t|
      t.index [:meal_id, :recipe_id]
    end
  end
end
