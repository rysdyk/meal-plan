class Ingredient < ApplicationRecord
  has_many :instructions
  has_many :recipes, through: :instructions
end
