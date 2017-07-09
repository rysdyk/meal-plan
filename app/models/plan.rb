class Plan < ApplicationRecord
  belongs_to :user
  has_many :reviews, as: :reviewable
  
  has_many :courses
  has_many :recipes, through: :courses
  
  # accepts_nested_attributes_for :recipes
  
  # validates :user, :name, presence: true
end
