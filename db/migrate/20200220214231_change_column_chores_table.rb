class ChangeColumnChoresTable < ActiveRecord::Migration[6.0]
  def change
  	change_table :chores do |t|
  		t.remove :type
  		t.string :chore_type
  	end
  end
end
