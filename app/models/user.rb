class User < ApplicationRecord
	has_many :chores
	has_many :tasks, through: :users_tasks

	validates :user_name, presence: true
	validates :email, presence: true 
	validates :password_digest, presence: true  
end
