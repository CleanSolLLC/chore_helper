class Chore < ApplicationRecord
  belongs_to :user
  has_many :tasks
  #has_many :users 
  
end
