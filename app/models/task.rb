class Task < ApplicationRecord
  belongs_to :chore
  has_many :users, through: :users_tasks
end
