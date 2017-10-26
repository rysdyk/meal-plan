class Menu < ApplicationRecord
  # belongs_to :user
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes
  
  validates :total_meals, :total_servings, :cost, :start_date, presence: true
end
