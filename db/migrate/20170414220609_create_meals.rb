class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.references :plan, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
