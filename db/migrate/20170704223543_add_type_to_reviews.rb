class AddTypeToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :reviewable_type, :string
  end
end
