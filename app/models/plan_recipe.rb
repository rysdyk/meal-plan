class PlanRecipe < ApplicationRecord
  belongs_to :plan
  belongs_to :recipe
end