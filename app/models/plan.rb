class Plan < ApplicationRecord
  belongs_to :user
  has_many :recipes
  accepts_nested_attributes_for :recipes
end
