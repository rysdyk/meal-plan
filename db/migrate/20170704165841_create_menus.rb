class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.integer :total_meals
      t.integer :total_servings
      t.decimal :cost
      t.text :notes
      t.references :user, foreign_key: true
      t.date :start_date
      
      t.timestamps
    end
  end
end
