class Recipe < ApplicationRecord
  has_many :meals, dependent: :destroy
  has_many :plans, through: :meals

  has_many :instructions
  has_many :ingredients, through: :instructions

  has_many :steps

  accepts_nested_attributes_for :steps
  accepts_nested_attributes_for :ingredients
end
