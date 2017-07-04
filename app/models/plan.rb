class Plan < ApplicationRecord
  belongs_to :user
  has_many :recipes, through: :plans_recipes
  has_many :reviews, as: :reviewable
  # accepts_nested_attributes_for :recipes
end
