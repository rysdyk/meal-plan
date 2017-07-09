class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :user
  has_many :reviews, as: :reviewable
  
  has_many :courses
  has_many :plans, through: :courses
  # accepts_nested_attributes_for :ingredients
  
  # validates :user, :ingredients, :name, :servings, :calories, :cost, presence: true
end
