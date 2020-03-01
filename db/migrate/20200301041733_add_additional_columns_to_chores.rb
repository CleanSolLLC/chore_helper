class AddAdditionalColumnsToChores < ActiveRecord::Migration[6.0]
  def change
  	  	change_table :chores do |t| 
		t.belongs_to :task 
	end
  end
end
