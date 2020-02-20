class User < ApplicationRecord
	has_many :tasks, through: :chores
end
