class Plan < ApplicationRecord
  has_many :meals
  has_many :recipes, through: :meals
end
