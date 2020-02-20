class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.boolean :completed
      t.datetime :date_completed
      t.string :task_name
      t.references :chore, null: false, foreign_key: true

      t.timestamps
    end
  end
end
