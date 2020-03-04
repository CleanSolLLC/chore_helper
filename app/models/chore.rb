class Chore < ApplicationRecord
  has_many :user
  has_many :tasks

  validates :chore_type, presence: true
  validates :chore_type, uniqueness: true
  #has_many :users 
  
end
