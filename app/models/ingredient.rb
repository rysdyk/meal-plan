class Ingredient < ApplicationRecord
  belongs_to :recipe
  
  CATEGORY = ['Vegan', 'Vegetarian', 'Gluten-Free', 'Diary-Free']
  WARNING = ['Dairy', 'Lactose', 'Gluten', 'Peanuts', 'Fish', 'Animal']
  
  validates :recipe, :name, :quantity, :unit, presence: true
  validates :category, inclusion: {in: CATEGORY}, allow_nil: true
  validates :warning, inclusion: {in: WARNING}, allow_nil: true
  
end
