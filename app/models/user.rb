class User < ApplicationRecord
	has_many :chores
	has_many :tasks, through: :users_tasks
end
