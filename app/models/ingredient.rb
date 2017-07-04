class Ingredient < ApplicationRecord
  belongs_to :recipe
  
  CATEGORY = ['Vegan', 'Vegetarian', 'Gluten-Free', 'Diary-Free']
  WARNING = ['Dairy', 'Lactose', 'Gluten', 'Peanuts', 'Fish', 'Animal']
end
