class UserTask < ApplicationRecord
  belongs_to :chore
  belongs_to :user
end
