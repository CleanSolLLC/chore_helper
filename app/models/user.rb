class User < ApplicationRecord
	has_many :chores
	has_many :tasks, through: :user_tasks #have user_id and task_id  
end
