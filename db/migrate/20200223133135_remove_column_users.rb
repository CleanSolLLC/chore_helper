class RemoveColumnUsers < ActiveRecord::Migration[6.0]
  def change
  	remove_column :users, :password_digest, :string
  	remove_column :users, :avatar, :binary
  	remove_column :users, :user_name, :string  
  end
end
