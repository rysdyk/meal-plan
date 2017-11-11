class Recipe < ApplicationRecord
  # has_many :ingredients
  # belongs_to :user
  has_many :reviews, as: :reviewable
  
  has_many :menu_recipes
  has_many :menus, through: :menu_receipes
  
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients
  
  validates :name, presence: true, uniqueness: true
  validates :description, :servings, :calories, :cost, presence: true
  
  # prevents duplicate ingredients from being created
  def ingredients_attributes=(ingredient_attributes)
    ingredient_attributes.values.each do |ingredient_attribute|
      ingredient = Ingredient.find_or_create_by(ingredient_attribute)
      self.ingredients << ingredient
    end
  end
  
end
