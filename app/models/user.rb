class User < ApplicationRecord
  has_secure_password
  has_many :recipes
  has_many :plans
  has_many :menus
  has_many :reviews
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
