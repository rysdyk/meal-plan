class AddColumnsToInstructions < ActiveRecord::Migration[5.0]
  def change
    add_column :instructions, :quantity, :float
    add_column :instructions, :unit, :string
  end
end
