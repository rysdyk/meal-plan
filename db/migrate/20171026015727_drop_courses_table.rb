class DropCoursesTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :courses
    drop_table :plans
  end
end
