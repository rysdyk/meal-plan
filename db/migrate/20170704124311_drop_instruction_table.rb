class DropInstructionTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :instructions
  end
  
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
