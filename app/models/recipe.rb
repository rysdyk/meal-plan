class Recipe < ApplicationRecord
  has_many :ingredients
  # belongs_to :user
  has_many :reviews, as: :reviewable
  
  has_many :menu_recipes
  has_many :menus, through: :menu_receipes
  
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  
  # validates :user, :ingredients, :name, :servings, :calories, :cost, presence: true
end
