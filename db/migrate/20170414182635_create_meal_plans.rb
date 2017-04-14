class CreateMealPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_plans do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
