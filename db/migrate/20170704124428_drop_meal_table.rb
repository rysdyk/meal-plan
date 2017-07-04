class DropMealTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :meals
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
