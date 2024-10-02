class CreateTodos < ActiveRecord::Migration[7.2]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.date :due_date, null: false
      t.date :complete_date, null: true
      t.boolean :auto_repeat, default: false
      t.integer :priority, default: 0
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
