class CreateGoals < ActiveRecord::Migration[7.2]
  def change
    create_table :goals do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :tag, null: false
      t.date :completion_date, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
