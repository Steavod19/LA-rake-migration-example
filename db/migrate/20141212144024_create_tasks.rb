class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task, null: false
      t.text :description
      t.date :due_date
      t.integer :user_id, null: false
      t.integer :project_id, null: false

      t.timestamps
    end
  end
end
