class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :user
  has_many :reviews, as: :reviewable
  has_many :plans, through: :plans_recipes
  # accepts_nested_attributes_for :ingredients
  
  validates :user, :ingredients, :name, :servings, :calories, :cost, presence: true
end
