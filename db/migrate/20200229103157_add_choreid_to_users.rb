class AddChoreidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :chore_id, :integer
  end
end
