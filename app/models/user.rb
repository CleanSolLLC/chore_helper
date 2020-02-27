class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :chores
	has_many :tasks, through: :users_tasks

	validates :username, presence: true 
	#validates :email, uniqueness: true  
end
 