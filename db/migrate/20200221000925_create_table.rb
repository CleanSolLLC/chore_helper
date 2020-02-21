class CreateTable < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.string :chore_type
    end
  end
end
