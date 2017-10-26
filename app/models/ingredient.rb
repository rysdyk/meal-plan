class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
  CATEGORY = ['Vegan', 'Vegetarian', 'Gluten-Free', 'Diary-Free']
  WARNING = ['Dairy', 'Lactose', 'Gluten', 'Peanuts', 'Fish', 'Animal']
  
  validates :recipe, :name, :quantity, :unit, presence: true
  validates :category, inclusion: {in: CATEGORY}, allow_nil: true
  validates :warning, inclusion: {in: WARNING}, allow_nil: true
  
end
