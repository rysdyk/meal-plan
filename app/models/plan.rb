class Plan < ApplicationRecord
  has_many :meals
  has_many :recipes, through: :meals
  accepts_nested_attributes_for :recipes
end
