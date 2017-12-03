class Menu < ApplicationRecord
  # belongs_to :user
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes
  accepts_nested_attributes_for :menu_recipes, :allow_destroy => true
  
  # validates :total_meals, :total_servings, :cost, :start_date, presence: true
  
  before_save :calculate_menu_info
  
  private
  
  def calculate_menu_info
    self.cost = self.recipes.inject(0){|sum,x| sum + x.cost }
    self.total_servings = self.menu_recipes.inject(0){|sum,x| sum + (x.servings.to_i * x.recipe.servings.to_i) }
  end
end
