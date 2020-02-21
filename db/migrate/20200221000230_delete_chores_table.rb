class DeleteChoresTable < ActiveRecord::Migration[6.0]
  def change
  	drop_table :chores
  end
end
