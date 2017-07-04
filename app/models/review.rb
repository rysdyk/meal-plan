class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
  belongs_to :user
  
  validates :user, :rating, :review, presence: true
end
