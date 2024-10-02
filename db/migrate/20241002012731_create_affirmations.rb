class CreateAffirmations < ActiveRecord::Migration[7.2]
  def change
    create_table :affirmations do |t|
      t.references :user, null: false, foreign_key: true
      t.text :affirmation, null: false
      t.string :tag, null: false

      t.timestamps
    end
  end
end
