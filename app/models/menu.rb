class Menu < ApplicationRecord
  belongs_to :user
  has_many :plans
  has_many :recipes, through: :plans
end
