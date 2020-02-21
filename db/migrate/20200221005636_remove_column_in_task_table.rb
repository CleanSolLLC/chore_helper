class RemoveColumnInTaskTable < ActiveRecord::Migration[6.0]
  def change
  	remove_column :tasks, :chore_id
  end
end
