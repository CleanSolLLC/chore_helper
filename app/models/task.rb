class Task < ApplicationRecord
  belongs_to :chore
  #has_many :users, through: :chores
  #has to be a chore_id on user_task 
end
