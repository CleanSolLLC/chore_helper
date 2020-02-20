class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
  	create_join_table :users, :tasks, table_name: :user_tasks
  end
end
