class AddFieldToPlans < ActiveRecord::Migration[5.0]
  def change
    add_reference :plans, :user, foreign_key: true
  end
end