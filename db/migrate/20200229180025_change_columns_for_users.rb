class ChangeColumnsForUsers < ActiveRecord::Migration[6.0]
  def change
  	
  	change_table :tasks do |t| 
		t.remove :chore_id
		t.belongs_to :chore 
	end
  end
end
