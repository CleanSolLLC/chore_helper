class ChangeColumnsForChores < ActiveRecord::Migration[6.0]
  def change
  	  	change_table :chores do |t| 
		t.remove :user_id
		t.remove :task_id
		t.belongs_to :user 
	end
  end
end
