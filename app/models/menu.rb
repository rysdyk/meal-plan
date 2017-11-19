class Menu < ApplicationRecord
  # belongs_to :user
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes
  
  # validates :total_meals, :total_servings, :cost, :start_date, presence: true
  
  after_save :calculate_menu_info
  
  private
  
  def calculate_menu_info
    self.cost = self.recipes.inject(0){|sum,x| sum + x.cost }
  end
end
