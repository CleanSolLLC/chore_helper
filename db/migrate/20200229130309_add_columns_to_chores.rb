class AddColumnsToChores < ActiveRecord::Migration[6.0]
  def change
    add_column :chores, :user_id, :integer
    add_column :chores, :task_id, :integer
  end
end
