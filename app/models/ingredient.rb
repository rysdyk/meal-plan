class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
  CATEGORY = ['Vegan', 'Vegetarian', 'Gluten-Free', 'Diary-Free', 'Paleo']
  WARNING = ['Dairy', 'Lactose', 'Gluten', 'Peanuts', 'Nuts', 'Fish', 'Animal']
  
  #validates_inclusion_of :category, in: CATEGORY, allow_nil: true
  #validates_inclusion_of :warning, in: WARNING, allow_nil: true
  
end
