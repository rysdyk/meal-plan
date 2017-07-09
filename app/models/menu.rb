class Menu < ApplicationRecord
  belongs_to :user
  has_many :plans
  has_many :recipes, through: :plans
  
  validates :total_meals, :total_servings, :cost, :start_date, presence: true
end
