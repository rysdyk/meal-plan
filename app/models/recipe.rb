class Recipe < ApplicationRecord
  has_many :meals
  has_many :plans, through: :meals

  has_many :instructions
  has_many :ingredients, through: :instructions

  has_many :steps
end
