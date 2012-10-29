class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :priority
      t.boolean :done
      t.date :duedate
    end
  end
end
